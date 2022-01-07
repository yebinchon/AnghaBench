
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_zone_t ;


 size_t sz_s2u (size_t) ;

__attribute__((used)) static size_t
zone_good_size(malloc_zone_t *zone, size_t size) {
 if (size == 0) {
  size = 1;
 }
 return sz_s2u(size);
}
