
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int root; } ;
typedef TYPE_1__ treap ;
typedef int* changes ;


 int dl_free (int*,int) ;
 int trp_free (int ) ;

void chg_free (changes *_x) {
  changes x = *_x;


  if ((long)(x) < 0) {
  } else

  if (x) {
    if (x[0] < 0) {
      trp_free (((treap *)x)->root);
      dl_free (x, sizeof (treap));
    } else {
      dl_free (x, sizeof (int) * (x[0] + 1));
    }
  }

  *_x = ((void*)0);
}
