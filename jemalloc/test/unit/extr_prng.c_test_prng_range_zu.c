
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_zu_t ;


 int ATOMIC_RELAXED ;
 size_t MAX_RANGE ;
 unsigned int NREPS ;
 scalar_t__ RANGE_STEP ;
 int assert_zu_lt (size_t,size_t,char*) ;
 int atomic_store_zu (int *,size_t,int ) ;
 size_t prng_range_zu (int *,size_t,int) ;

__attribute__((used)) static void
test_prng_range_zu(bool atomic) {
 size_t range;




 for (range = 2; range < 10000000; range += 97) {
  atomic_zu_t s;
  unsigned rep;

  atomic_store_zu(&s, range, ATOMIC_RELAXED);
  for (rep = 0; rep < 10; rep++) {
   size_t r = prng_range_zu(&s, range, atomic);

   assert_zu_lt(r, range, "Out of range");
  }
 }
}
