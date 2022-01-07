
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req {int done; int dev; int gid; int uid; int mode; int name; int err; struct req* next; } ;


 int CLONE_NEWNS ;
 int MS_SILENT ;
 int TASK_INTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int complete (int *) ;
 int handle (int ,int ,int ,int ,int ) ;
 int ksys_chdir (char*) ;
 int ksys_chroot (char*) ;
 int ksys_mount (char*,char*,char*,int ,int *) ;
 int ksys_unshare (int ) ;
 int req_lock ;
 struct req* requests ;
 int schedule () ;
 int setup_done ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int devtmpfsd(void *p)
{
 int *err = p;
 *err = ksys_unshare(CLONE_NEWNS);
 if (*err)
  goto out;
 *err = ksys_mount("devtmpfs", "/", "devtmpfs", MS_SILENT, ((void*)0));
 if (*err)
  goto out;
 ksys_chdir("/..");
 ksys_chroot(".");
 complete(&setup_done);
 while (1) {
  spin_lock(&req_lock);
  while (requests) {
   struct req *req = requests;
   requests = ((void*)0);
   spin_unlock(&req_lock);
   while (req) {
    struct req *next = req->next;
    req->err = handle(req->name, req->mode,
        req->uid, req->gid, req->dev);
    complete(&req->done);
    req = next;
   }
   spin_lock(&req_lock);
  }
  __set_current_state(TASK_INTERRUPTIBLE);
  spin_unlock(&req_lock);
  schedule();
 }
 return 0;
out:
 complete(&setup_done);
 return *err;
}
