
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int nr_segments; int handle; scalar_t__ sector_number; } ;
struct TYPE_4__ {TYPE_1__ rw; } ;
struct blkif_request {int operation; TYPE_2__ u; } ;


 int BLKIF_MAX_SEGMENTS_PER_REQUEST ;
 int XEN_PAGE_SIZE ;

__attribute__((used)) static void blkif_setup_extra_req(struct blkif_request *first,
      struct blkif_request *second)
{
 uint16_t nr_segments = first->u.rw.nr_segments;





 first->u.rw.nr_segments = BLKIF_MAX_SEGMENTS_PER_REQUEST;

 second->u.rw.nr_segments = nr_segments - BLKIF_MAX_SEGMENTS_PER_REQUEST;
 second->u.rw.sector_number = first->u.rw.sector_number +
  (BLKIF_MAX_SEGMENTS_PER_REQUEST * XEN_PAGE_SIZE) / 512;

 second->u.rw.handle = first->u.rw.handle;
 second->operation = first->operation;
}
