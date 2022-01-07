
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct throtl_grp {int dummy; } ;
struct kernfs_open_file {int dummy; } ;
struct blkg_conf_ctx {int blkg; int body; } ;
struct blkcg {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int private; } ;


 int EINVAL ;
 unsigned int U64_MAX ;
 int blkcg_policy_throtl ;
 int blkg_conf_finish (struct blkg_conf_ctx*) ;
 int blkg_conf_prep (struct blkcg*,int *,char*,struct blkg_conf_ctx*) ;
 struct throtl_grp* blkg_to_tg (int ) ;
 struct blkcg* css_to_blkcg (int ) ;
 TYPE_1__* of_cft (struct kernfs_open_file*) ;
 int of_css (struct kernfs_open_file*) ;
 int sscanf (int ,char*,unsigned int*) ;
 int tg_conf_updated (struct throtl_grp*,int) ;

__attribute__((used)) static ssize_t tg_set_conf(struct kernfs_open_file *of,
      char *buf, size_t nbytes, loff_t off, bool is_u64)
{
 struct blkcg *blkcg = css_to_blkcg(of_css(of));
 struct blkg_conf_ctx ctx;
 struct throtl_grp *tg;
 int ret;
 u64 v;

 ret = blkg_conf_prep(blkcg, &blkcg_policy_throtl, buf, &ctx);
 if (ret)
  return ret;

 ret = -EINVAL;
 if (sscanf(ctx.body, "%llu", &v) != 1)
  goto out_finish;
 if (!v)
  v = U64_MAX;

 tg = blkg_to_tg(ctx.blkg);

 if (is_u64)
  *(u64 *)((void *)tg + of_cft(of)->private) = v;
 else
  *(unsigned int *)((void *)tg + of_cft(of)->private) = v;

 tg_conf_updated(tg, 0);
 ret = 0;
out_finish:
 blkg_conf_finish(&ctx);
 return ret ?: nbytes;
}
