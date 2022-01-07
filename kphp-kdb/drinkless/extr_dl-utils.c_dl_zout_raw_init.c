
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dl_zout ;


 int memset (int *,int ,int) ;

void dl_zout_raw_init (dl_zout *f) {
  memset (f, 0, sizeof (dl_zout));
}
