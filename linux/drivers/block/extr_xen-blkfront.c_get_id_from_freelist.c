
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct blkfront_ring_info {unsigned long shadow_free; TYPE_1__* shadow; int dev_info; } ;
struct TYPE_6__ {unsigned long id; } ;
struct TYPE_8__ {TYPE_2__ rw; } ;
struct TYPE_7__ {TYPE_4__ u; } ;
struct TYPE_5__ {TYPE_3__ req; } ;


 unsigned long BLK_RING_SIZE (int ) ;
 int BUG_ON (int) ;

__attribute__((used)) static int get_id_from_freelist(struct blkfront_ring_info *rinfo)
{
 unsigned long free = rinfo->shadow_free;

 BUG_ON(free >= BLK_RING_SIZE(rinfo->dev_info));
 rinfo->shadow_free = rinfo->shadow[free].req.u.rw.id;
 rinfo->shadow[free].req.u.rw.id = 0x0fffffee;
 return free;
}
