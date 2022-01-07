
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;


 int data_free (int *) ;
 int dl_free (int *,int) ;

void data_free_foreach (int *a, void **v) {
  data_free (*(data **)v);
  dl_free (*(data **)v, sizeof (data));
}
