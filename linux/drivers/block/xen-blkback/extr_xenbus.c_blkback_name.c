
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenbus_device {int nodename; } ;
struct xen_blkif {int domid; TYPE_1__* be; } ;
struct TYPE_2__ {struct xenbus_device* dev; } ;


 scalar_t__ IS_ERR (char*) ;
 int PTR_ERR (char*) ;
 int TASK_COMM_LEN ;
 int XBT_NIL ;
 int kfree (char*) ;
 int snprintf (char*,int ,char*,int,char*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;
 char* xenbus_read (int ,int ,char*,int *) ;

__attribute__((used)) static int blkback_name(struct xen_blkif *blkif, char *buf)
{
 char *devpath, *devname;
 struct xenbus_device *dev = blkif->be->dev;

 devpath = xenbus_read(XBT_NIL, dev->nodename, "dev", ((void*)0));
 if (IS_ERR(devpath))
  return PTR_ERR(devpath);

 devname = strstr(devpath, "/dev/");
 if (devname != ((void*)0))
  devname += strlen("/dev/");
 else
  devname = devpath;

 snprintf(buf, TASK_COMM_LEN, "%d.%s", blkif->domid, devname);
 kfree(devpath);

 return 0;
}
