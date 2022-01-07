
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_zu_t ;


 int ATOMIC_RELAXED ;
 int LG_SIZEOF_PTR ;
 unsigned int SIZE_T_MAX ;
 int ZU (int) ;
 int assert_zu_eq (size_t,size_t,char*,...) ;
 int assert_zu_ne (size_t,size_t,char*) ;
 int atomic_store_zu (int *,int,int ) ;
 size_t prng_lg_range_zu (int *,unsigned int,int) ;

__attribute__((used)) static void
test_prng_lg_range_zu(bool atomic) {
 atomic_zu_t sa, sb;
 size_t ra, rb;
 unsigned lg_range;

 atomic_store_zu(&sa, 42, ATOMIC_RELAXED);
 ra = prng_lg_range_zu(&sa, ZU(1) << (3 + LG_SIZEOF_PTR), atomic);
 atomic_store_zu(&sa, 42, ATOMIC_RELAXED);
 rb = prng_lg_range_zu(&sa, ZU(1) << (3 + LG_SIZEOF_PTR), atomic);
 assert_zu_eq(ra, rb,
     "Repeated generation should produce repeated results");

 atomic_store_zu(&sb, 42, ATOMIC_RELAXED);
 rb = prng_lg_range_zu(&sb, ZU(1) << (3 + LG_SIZEOF_PTR), atomic);
 assert_zu_eq(ra, rb,
     "Equivalent generation should produce equivalent results");

 atomic_store_zu(&sa, 42, ATOMIC_RELAXED);
 ra = prng_lg_range_zu(&sa, ZU(1) << (3 + LG_SIZEOF_PTR), atomic);
 rb = prng_lg_range_zu(&sa, ZU(1) << (3 + LG_SIZEOF_PTR), atomic);
 assert_zu_ne(ra, rb,
     "Full-width results must not immediately repeat");

 atomic_store_zu(&sa, 42, ATOMIC_RELAXED);
 ra = prng_lg_range_zu(&sa, ZU(1) << (3 + LG_SIZEOF_PTR), atomic);
 for (lg_range = (ZU(1) << (3 + LG_SIZEOF_PTR)) - 1; lg_range > 0;
     lg_range--) {
  atomic_store_zu(&sb, 42, ATOMIC_RELAXED);
  rb = prng_lg_range_zu(&sb, lg_range, atomic);
  assert_zu_eq((rb & (SIZE_T_MAX << lg_range)),
      0, "High order bits should be 0, lg_range=%u", lg_range);
  assert_zu_eq(rb, (ra >> ((ZU(1) << (3 + LG_SIZEOF_PTR)) -
      lg_range)), "Expected high order bits of full-width "
      "result, lg_range=%u", lg_range);
 }
}
