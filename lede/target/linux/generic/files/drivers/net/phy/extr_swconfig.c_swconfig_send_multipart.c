
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swconfig_callback {scalar_t__ (* fill ) (struct swconfig_callback*,void*) ;scalar_t__ (* close ) (struct swconfig_callback*,void*) ;int * msg; struct genl_info* info; } ;
struct genl_info {int dummy; } ;


 int GFP_KERNEL ;
 int NLMSG_GOODSIZE ;
 int genlmsg_reply (int *,struct genl_info*) ;
 int nlmsg_free (int *) ;
 int * nlmsg_new (int ,int ) ;
 scalar_t__ stub1 (struct swconfig_callback*,void*) ;
 scalar_t__ stub2 (struct swconfig_callback*,void*) ;

__attribute__((used)) static int
swconfig_send_multipart(struct swconfig_callback *cb, void *arg)
{
 struct genl_info *info = cb->info;
 int restart = 0;
 int err;

 do {
  if (!cb->msg) {
   cb->msg = nlmsg_new(NLMSG_GOODSIZE, GFP_KERNEL);
   if (cb->msg == ((void*)0))
    goto error;
  }

  if (!(cb->fill(cb, arg) < 0))
   break;


  if (restart)
   goto error;


  restart = 1;
  if (cb->close) {
   if (cb->close(cb, arg) < 0)
    goto error;
  }
  err = genlmsg_reply(cb->msg, info);
  cb->msg = ((void*)0);
  if (err < 0)
   goto error;

 } while (restart);

 return 0;

error:
 if (cb->msg)
  nlmsg_free(cb->msg);
 return -1;
}
