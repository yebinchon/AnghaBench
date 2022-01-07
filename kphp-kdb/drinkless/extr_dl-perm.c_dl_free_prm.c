
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dl_prm_ptr ;
typedef int dl_prm ;


 int dl_free (int ,int) ;

void dl_free_prm (dl_prm_ptr v) {
  dl_free (v, sizeof (dl_prm));
}
