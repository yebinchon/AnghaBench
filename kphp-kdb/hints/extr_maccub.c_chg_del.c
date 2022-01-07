
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int changes ;


 int chg_add (int *,int) ;

void chg_del (changes *x, int val) {
  chg_add (x, val ^ 1);
}
