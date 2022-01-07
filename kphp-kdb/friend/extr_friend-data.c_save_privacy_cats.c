
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cat_ver; } ;
typedef TYPE_1__ user_t ;


 int* P ;
 int assert (int) ;

__attribute__((used)) static void save_privacy_cats (user_t *U) {
  int *A;
  for (A = P; *A != -1; A++) {
    int x = *A;
    if ((x & 0x60000000) == 0x40000000) {
      assert (!(x & 0x3fffffe0));
      *A = (x & -0x40000000) + U->cat_ver[x & 0x1f];
    }
  }
}
