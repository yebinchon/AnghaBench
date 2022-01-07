
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int * data; } ;
struct amortization_counter {double value; } ;


 double CACHE_URI_BUCKETS ;
 size_t acounter_off ;
 int acounter_uncached_bucket_id ;
 int assert (int) ;

inline int get_bucket (struct cache_uri *U) {
  struct amortization_counter *C = ((struct amortization_counter *) &U->data[acounter_off]) + acounter_uncached_bucket_id;
  int bucket = (C->value < CACHE_URI_BUCKETS - 0.5) ? (int) C->value : CACHE_URI_BUCKETS - 1;
  assert (bucket >= 0 && bucket < CACHE_URI_BUCKETS);
  return bucket;
}
