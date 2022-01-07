
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u ;
typedef int substring_t ;
struct kernfs_open_file {int dummy; } ;
struct TYPE_2__ {int * i_lcoefs; } ;
struct ioc {int user_cost_model; int lock; TYPE_1__ params; } ;
struct gendisk {int queue; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
typedef int buf ;




 int EINVAL ;
 scalar_t__ IS_ERR (struct gendisk*) ;
 int MAX_OPT_ARGS ;
 int NR_I_LCOEFS ;
 size_t PTR_ERR (struct gendisk*) ;
 int blk_iocost_init (int ) ;
 struct gendisk* blkcg_conf_get_disk (char**) ;
 int cost_ctrl_tokens ;
 int i_lcoef_tokens ;
 int ioc_refresh_params (struct ioc*,int) ;
 int match_strlcpy (char*,int *,int) ;
 int match_token (char*,int ,int *) ;
 scalar_t__ match_u64 (int *,int *) ;
 int memcpy (int *,int *,int) ;
 int put_disk_and_module (struct gendisk*) ;
 struct ioc* q_to_ioc (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static ssize_t ioc_cost_model_write(struct kernfs_open_file *of, char *input,
        size_t nbytes, loff_t off)
{
 struct gendisk *disk;
 struct ioc *ioc;
 u64 u[NR_I_LCOEFS];
 bool user;
 char *p;
 int ret;

 disk = blkcg_conf_get_disk(&input);
 if (IS_ERR(disk))
  return PTR_ERR(disk);

 ioc = q_to_ioc(disk->queue);
 if (!ioc) {
  ret = blk_iocost_init(disk->queue);
  if (ret)
   goto err;
  ioc = q_to_ioc(disk->queue);
 }

 spin_lock_irq(&ioc->lock);
 memcpy(u, ioc->params.i_lcoefs, sizeof(u));
 user = ioc->user_cost_model;
 spin_unlock_irq(&ioc->lock);

 while ((p = strsep(&input, " \t\n"))) {
  substring_t args[MAX_OPT_ARGS];
  char buf[32];
  int tok;
  u64 v;

  if (!*p)
   continue;

  switch (match_token(p, cost_ctrl_tokens, args)) {
  case 129:
   match_strlcpy(buf, &args[0], sizeof(buf));
   if (!strcmp(buf, "auto"))
    user = 0;
   else if (!strcmp(buf, "user"))
    user = 1;
   else
    goto einval;
   continue;
  case 128:
   match_strlcpy(buf, &args[0], sizeof(buf));
   if (strcmp(buf, "linear"))
    goto einval;
   continue;
  }

  tok = match_token(p, i_lcoef_tokens, args);
  if (tok == NR_I_LCOEFS)
   goto einval;
  if (match_u64(&args[0], &v))
   goto einval;
  u[tok] = v;
  user = 1;
 }

 spin_lock_irq(&ioc->lock);
 if (user) {
  memcpy(ioc->params.i_lcoefs, u, sizeof(u));
  ioc->user_cost_model = 1;
 } else {
  ioc->user_cost_model = 0;
 }
 ioc_refresh_params(ioc, 1);
 spin_unlock_irq(&ioc->lock);

 put_disk_and_module(disk);
 return nbytes;

einval:
 ret = -EINVAL;
err:
 put_disk_and_module(disk);
 return ret;
}
