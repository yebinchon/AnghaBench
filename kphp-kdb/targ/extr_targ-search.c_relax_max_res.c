
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int type; int max_res; TYPE_2__* right; TYPE_1__* left; scalar_t__ complexity; } ;
typedef TYPE_3__ query_t ;
struct TYPE_6__ {int max_res; scalar_t__ complexity; } ;
struct TYPE_5__ {int max_res; scalar_t__ complexity; } ;


 int GRAY ;
 int INFTY ;
 int IS_BIG (int) ;
 int IS_GRAY (int) ;
 int IS_SMALL (int) ;
 int assert (int ) ;
 int max (int,int) ;
 int min (int,int) ;



__attribute__((used)) static inline void relax_max_res (query_t *Q) {
  int a = Q->left->max_res, b = Q->right->max_res, r;
  switch (Q->type) {
  case 129:
    if (IS_SMALL(a) && IS_SMALL(b)) {
      r = min (a, b);
    } else if (IS_SMALL(a)) {
      r = a;
    } else if (IS_SMALL(b)) {
      r = b;
    } else if (IS_GRAY(a) || IS_GRAY(b)) {
      r = GRAY;
    } else {
      r = a + b + 1;
      if (r < ~INFTY) {
 r = ~INFTY;
      }
    }
    break;
  case 128:
    if (IS_BIG(a) && IS_BIG(b)) {
      r = max (a, b);
    } else if (IS_BIG(a)) {
      r = a;
    } else if (IS_BIG(b)) {
      r = b;
    } else if (IS_GRAY(a) || IS_GRAY(b)) {
      r = GRAY;
    } else {
      r = a + b;
      if (r > INFTY) {
 r = INFTY;
      }
    }
    break;
  default:
    assert (0);
  }
  Q->max_res = r;
  Q->complexity = Q->left->complexity + Q->right->complexity;
}
