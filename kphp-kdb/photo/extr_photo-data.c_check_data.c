
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vptr ;
typedef int data ;


 scalar_t__ MAX_ALBUMS ;
 int assert (int) ;
 int data_free (int *) ;
 scalar_t__ data_unload (int *) ;
 int dl_free (int *,int) ;
 int* todel ;
 scalar_t__ todel_n ;

void check_data (int *i, vptr *_d) {
  data *d = (data *) *_d;
  if (data_unload (d)) {
    assert (todel_n < MAX_ALBUMS);
    data_free (d);
    dl_free (d, sizeof (data));
    todel[todel_n++] = *i;
  }
}
