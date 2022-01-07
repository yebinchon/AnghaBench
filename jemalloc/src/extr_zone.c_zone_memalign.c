
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_zone_t ;


 int je_posix_memalign (void**,size_t,size_t) ;

__attribute__((used)) static void *
zone_memalign(malloc_zone_t *zone, size_t alignment, size_t size) {
 void *ret = ((void*)0);

 je_posix_memalign(&ret, alignment, size);

 return ret;
}
