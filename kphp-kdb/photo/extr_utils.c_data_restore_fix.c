
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;


 int data_restore_append (int *,int,int) ;

void data_restore_fix (data *d, int a, int b, int c) {



  data_restore_append (d, a, b);

  data_restore_append (d, b, c);
}
