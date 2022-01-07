
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_region {int size; scalar_t__ offset; } ;
struct TYPE_2__ {scalar_t__ address; } ;


 TYPE_1__* FDCS ;
 struct io_region const* io_regions ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static void floppy_release_allocated_regions(int fdc, const struct io_region *p)
{
 while (p != io_regions) {
  p--;
  release_region(FDCS->address + p->offset, p->size);
 }
}
