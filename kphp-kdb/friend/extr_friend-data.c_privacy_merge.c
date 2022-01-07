
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ y; struct TYPE_5__* left; struct TYPE_5__* right; } ;
typedef TYPE_1__ privacy_t ;



__attribute__((used)) static privacy_t *privacy_merge (privacy_t *L, privacy_t *R) {
  if (!L) { return R; }
  if (!R) { return L; }
  if (L->y > R->y) {
    L->right = privacy_merge (L->right, R);
    return L;
  } else {
    R->left = privacy_merge (L, R->left);
    return R;
  }
}
