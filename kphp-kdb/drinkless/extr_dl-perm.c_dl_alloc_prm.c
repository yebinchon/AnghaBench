
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dl_prm_ptr ;
typedef int dl_prm ;


 int dl_malloc0 (int) ;

dl_prm_ptr dl_alloc_prm (void) {
  dl_prm_ptr res = dl_malloc0 (sizeof (dl_prm));
  return res;
}
