
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vector ;


 int vct_add (int *,int) ;
 int vct_back (int *) ;

void vct_set_add (vector *v, int val) {
  if (vct_back (v) != val) {
    vct_add (v, val);
  }
}
