
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct blkfront_ring_info {unsigned long shadow_free; TYPE_4__* shadow; } ;
struct TYPE_5__ {unsigned long id; } ;
struct TYPE_6__ {TYPE_1__ rw; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {int * request; TYPE_3__ req; } ;


 int EINVAL ;

__attribute__((used)) static int add_id_to_freelist(struct blkfront_ring_info *rinfo,
         unsigned long id)
{
 if (rinfo->shadow[id].req.u.rw.id != id)
  return -EINVAL;
 if (rinfo->shadow[id].request == ((void*)0))
  return -EINVAL;
 rinfo->shadow[id].req.u.rw.id = rinfo->shadow_free;
 rinfo->shadow[id].request = ((void*)0);
 rinfo->shadow_free = id;
 return 0;
}
