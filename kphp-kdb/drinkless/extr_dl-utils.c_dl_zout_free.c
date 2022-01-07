
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dl_zout ;


 int dl_zout_flush (int *) ;
 int dl_zout_free_buffer (int *) ;

void dl_zout_free (dl_zout *f) {
  dl_zout_flush (f);
  dl_zout_free_buffer (f);
}
