
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATOMIC_RELEASE ;
 int atomic_store_p (int *,void*,int ) ;
 int dss_max ;
 void* extent_dss_sbrk (int ) ;

__attribute__((used)) static void *
extent_dss_max_update(void *new_addr) {




 void *max_cur = extent_dss_sbrk(0);
 if (max_cur == (void *)-1) {
  return ((void*)0);
 }
 atomic_store_p(&dss_max, max_cur, ATOMIC_RELEASE);

 if (new_addr != ((void*)0) && max_cur != new_addr) {
  return ((void*)0);
 }
 return max_cur;
}
