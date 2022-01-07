
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req {int mode; int err; int done; struct req* next; struct device* dev; int name; int gid; int uid; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int S_IFBLK ;
 int S_IFCHR ;
 int device_get_devnode (struct device*,int*,int *,int *,char const**) ;
 int init_completion (int *) ;
 scalar_t__ is_blockdev (struct device*) ;
 int kfree (char const*) ;
 int req_lock ;
 struct req* requests ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int thread ;
 int wait_for_completion (int *) ;
 int wake_up_process (int ) ;

int devtmpfs_create_node(struct device *dev)
{
 const char *tmp = ((void*)0);
 struct req req;

 if (!thread)
  return 0;

 req.mode = 0;
 req.uid = GLOBAL_ROOT_UID;
 req.gid = GLOBAL_ROOT_GID;
 req.name = device_get_devnode(dev, &req.mode, &req.uid, &req.gid, &tmp);
 if (!req.name)
  return -ENOMEM;

 if (req.mode == 0)
  req.mode = 0600;
 if (is_blockdev(dev))
  req.mode |= S_IFBLK;
 else
  req.mode |= S_IFCHR;

 req.dev = dev;

 init_completion(&req.done);

 spin_lock(&req_lock);
 req.next = requests;
 requests = &req;
 spin_unlock(&req_lock);

 wake_up_process(thread);
 wait_for_completion(&req.done);

 kfree(tmp);

 return req.err;
}
