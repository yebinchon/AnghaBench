
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_20__ {int id; } ;
struct TYPE_17__ {int * indirect_grefs; int sector_number; int id; int handle; int nr_segments; int indirect_op; } ;
struct TYPE_15__ {int nr_sectors; int sector_number; int id; int flag; } ;
struct TYPE_13__ {int nr_segments; int * seg; int sector_number; int id; int handle; } ;
struct TYPE_11__ {TYPE_9__ other; TYPE_6__ indirect; TYPE_4__ discard; TYPE_2__ rw; } ;
struct blkif_x86_64_request {TYPE_10__ u; int operation; } ;
struct TYPE_18__ {int id; } ;
struct TYPE_16__ {int * indirect_grefs; int nr_segments; int sector_number; int id; int handle; int indirect_op; } ;
struct TYPE_14__ {int nr_sectors; int sector_number; int id; int flag; } ;
struct TYPE_12__ {int nr_segments; int * seg; int sector_number; int id; int handle; } ;
struct TYPE_19__ {TYPE_7__ other; TYPE_5__ indirect; TYPE_3__ discard; TYPE_1__ rw; } ;
struct blkif_request {int operation; TYPE_8__ u; } ;


 int BLKIF_MAX_SEGMENTS_PER_REQUEST ;






 int INDIRECT_PAGES (int ) ;
 int MAX_INDIRECT_PAGES ;
 int READ_ONCE (int ) ;
 int barrier () ;
 int min (int ,int ) ;

__attribute__((used)) static inline void blkif_get_x86_64_req(struct blkif_request *dst,
     struct blkif_x86_64_request *src)
{
 int i, n = BLKIF_MAX_SEGMENTS_PER_REQUEST, j;
 dst->operation = READ_ONCE(src->operation);
 switch (dst->operation) {
 case 130:
 case 129:
 case 128:
 case 132:
  dst->u.rw.nr_segments = src->u.rw.nr_segments;
  dst->u.rw.handle = src->u.rw.handle;
  dst->u.rw.id = src->u.rw.id;
  dst->u.rw.sector_number = src->u.rw.sector_number;
  barrier();
  if (n > dst->u.rw.nr_segments)
   n = dst->u.rw.nr_segments;
  for (i = 0; i < n; i++)
   dst->u.rw.seg[i] = src->u.rw.seg[i];
  break;
 case 133:
  dst->u.discard.flag = src->u.discard.flag;
  dst->u.discard.id = src->u.discard.id;
  dst->u.discard.sector_number = src->u.discard.sector_number;
  dst->u.discard.nr_sectors = src->u.discard.nr_sectors;
  break;
 case 131:
  dst->u.indirect.indirect_op = src->u.indirect.indirect_op;
  dst->u.indirect.nr_segments = src->u.indirect.nr_segments;
  dst->u.indirect.handle = src->u.indirect.handle;
  dst->u.indirect.id = src->u.indirect.id;
  dst->u.indirect.sector_number = src->u.indirect.sector_number;
  barrier();
  j = min(MAX_INDIRECT_PAGES, INDIRECT_PAGES(dst->u.indirect.nr_segments));
  for (i = 0; i < j; i++)
   dst->u.indirect.indirect_grefs[i] =
    src->u.indirect.indirect_grefs[i];
  break;
 default:




  dst->u.other.id = src->u.other.id;
  break;
 }
}
