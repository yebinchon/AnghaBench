
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {unsigned long bi_vcnt; scalar_t__ bi_private; TYPE_1__* bi_io_vec; } ;
struct TYPE_2__ {scalar_t__ bv_len; } ;


 int bio_op (struct bio*) ;
 int invalidate_kernel_vmap_range (scalar_t__,unsigned long) ;
 int op_is_write (int ) ;

__attribute__((used)) static void bio_invalidate_vmalloc_pages(struct bio *bio)
{
}
