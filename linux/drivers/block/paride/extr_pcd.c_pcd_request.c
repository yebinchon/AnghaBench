
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pcd_unit {int dummy; } ;
struct TYPE_6__ {int bio; TYPE_1__* rq_disk; } ;
struct TYPE_5__ {struct pcd_unit* private_data; } ;


 int bio_data (int ) ;
 int blk_rq_cur_sectors (TYPE_2__*) ;
 int blk_rq_pos (TYPE_2__*) ;
 int do_pcd_read ;
 int nice ;
 int pcd_buf ;
 int pcd_bufblk ;
 int pcd_busy ;
 int pcd_count ;
 struct pcd_unit* pcd_current ;
 TYPE_2__* pcd_req ;
 int pcd_sector ;
 int ps_set_intr (int ,int *,int ,int ) ;
 int set_next_request () ;

__attribute__((used)) static void pcd_request(void)
{
 struct pcd_unit *cd;

 if (pcd_busy)
  return;

 if (!pcd_req && !set_next_request())
  return;

 cd = pcd_req->rq_disk->private_data;
 if (cd != pcd_current)
  pcd_bufblk = -1;
 pcd_current = cd;
 pcd_sector = blk_rq_pos(pcd_req);
 pcd_count = blk_rq_cur_sectors(pcd_req);
 pcd_buf = bio_data(pcd_req->bio);
 pcd_busy = 1;
 ps_set_intr(do_pcd_read, ((void*)0), 0, nice);
}
