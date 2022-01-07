
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int flags; scalar_t__ queue; } ;
struct carm_port {struct gendisk* disk; } ;
struct carm_host {struct carm_port* port; } ;


 int GENHD_FL_UP ;
 int blk_cleanup_queue (scalar_t__) ;
 int del_gendisk (struct gendisk*) ;
 int put_disk (struct gendisk*) ;

__attribute__((used)) static void carm_free_disk(struct carm_host *host, unsigned int port_no)
{
 struct carm_port *port = &host->port[port_no];
 struct gendisk *disk = port->disk;

 if (!disk)
  return;

 if (disk->flags & GENHD_FL_UP)
  del_gendisk(disk);
 if (disk->queue)
  blk_cleanup_queue(disk->queue);
 put_disk(disk);
}
