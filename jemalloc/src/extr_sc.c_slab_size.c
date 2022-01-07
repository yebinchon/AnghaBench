
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZU (int) ;
 size_t reg_size_compute (int,int,int) ;

__attribute__((used)) static int
slab_size(int lg_page, int lg_base, int lg_delta, int ndelta) {
 size_t page = (ZU(1) << lg_page);
 size_t reg_size = reg_size_compute(lg_base, lg_delta, ndelta);

 size_t try_slab_size = page;
 size_t try_nregs = try_slab_size / reg_size;
 size_t perfect_slab_size = 0;
 bool perfect = 0;
 while (!perfect) {
  perfect_slab_size = try_slab_size;
  size_t perfect_nregs = try_nregs;
  try_slab_size += page;
  try_nregs = try_slab_size / reg_size;
  if (perfect_slab_size == perfect_nregs * reg_size) {
   perfect = 1;
  }
 }
 return (int)(perfect_slab_size / page);
}
