
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct kernfs_open_file {int dummy; } ;
struct iolatency_grp {scalar_t__ min_lat_nsec; struct blk_iolatency* blkiolat; } ;
struct blkg_conf_ctx {char* body; struct blkcg_gq* blkg; } ;
struct blkcg_gq {int q; } ;
struct blkcg {int dummy; } ;
struct blk_iolatency {int enabled; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EINVAL ;
 scalar_t__ NSEC_PER_USEC ;
 int WARN_ON_ONCE (int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int blk_get_queue (int ) ;
 int blk_mq_freeze_queue (int ) ;
 int blk_mq_unfreeze_queue (int ) ;
 int blk_put_queue (int ) ;
 int blkcg_policy_iolatency ;
 int blkg_conf_finish (struct blkg_conf_ctx*) ;
 int blkg_conf_prep (struct blkcg*,int *,char*,struct blkg_conf_ctx*) ;
 int blkg_get (struct blkcg_gq*) ;
 int blkg_put (struct blkcg_gq*) ;
 struct iolatency_grp* blkg_to_lat (struct blkcg_gq*) ;
 struct blkcg* css_to_blkcg (int ) ;
 int iolatency_clear_scaling (struct blkcg_gq*) ;
 int iolatency_set_min_lat_nsec (struct blkcg_gq*,scalar_t__) ;
 int of_css (struct kernfs_open_file*) ;
 int sscanf (char*,char*,...) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static ssize_t iolatency_set_limit(struct kernfs_open_file *of, char *buf,
        size_t nbytes, loff_t off)
{
 struct blkcg *blkcg = css_to_blkcg(of_css(of));
 struct blkcg_gq *blkg;
 struct blkg_conf_ctx ctx;
 struct iolatency_grp *iolat;
 char *p, *tok;
 u64 lat_val = 0;
 u64 oldval;
 int ret;
 int enable = 0;

 ret = blkg_conf_prep(blkcg, &blkcg_policy_iolatency, buf, &ctx);
 if (ret)
  return ret;

 iolat = blkg_to_lat(ctx.blkg);
 p = ctx.body;

 ret = -EINVAL;
 while ((tok = strsep(&p, " "))) {
  char key[16];
  char val[21];

  if (sscanf(tok, "%15[^=]=%20s", key, val) != 2)
   goto out;

  if (!strcmp(key, "target")) {
   u64 v;

   if (!strcmp(val, "max"))
    lat_val = 0;
   else if (sscanf(val, "%llu", &v) == 1)
    lat_val = v * NSEC_PER_USEC;
   else
    goto out;
  } else {
   goto out;
  }
 }


 blkg = ctx.blkg;
 oldval = iolat->min_lat_nsec;

 enable = iolatency_set_min_lat_nsec(blkg, lat_val);
 if (enable) {
  WARN_ON_ONCE(!blk_get_queue(blkg->q));
  blkg_get(blkg);
 }

 if (oldval != iolat->min_lat_nsec) {
  iolatency_clear_scaling(blkg);
 }

 ret = 0;
out:
 blkg_conf_finish(&ctx);
 if (ret == 0 && enable) {
  struct iolatency_grp *tmp = blkg_to_lat(blkg);
  struct blk_iolatency *blkiolat = tmp->blkiolat;

  blk_mq_freeze_queue(blkg->q);

  if (enable == 1)
   atomic_inc(&blkiolat->enabled);
  else if (enable == -1)
   atomic_dec(&blkiolat->enabled);
  else
   WARN_ON_ONCE(1);

  blk_mq_unfreeze_queue(blkg->q);

  blkg_put(blkg);
  blk_put_queue(blkg->q);
 }
 return ret ?: nbytes;
}
