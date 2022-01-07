
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ x; int y; struct TYPE_9__* right; struct TYPE_9__* left; } ;
typedef TYPE_1__ privacy_t ;


 int free_privacy_node (TYPE_1__*) ;
 int privacy_split (TYPE_1__**,TYPE_1__**,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static privacy_t *privacy_replace (privacy_t *T, privacy_t *N, int insertion_found) {
  int insertion_current = 1;
  if (T) {
    if (N->x == T->x) {
      N->y = (N->y & 255) | (T->y & -256);
      N->left = T->left;
      N->right = T->right;
      free_privacy_node (T);
      return N;
    }
    insertion_current = N->y > (T->y | 255);
    if (N->x < T->x) {
      privacy_t *R = privacy_replace (T->left, N, insertion_current);
      if (R) {
        T->left = R;
        return T;
      }
    } else {
      privacy_t *R = privacy_replace (T->right, N, insertion_current);
      if (R) {
        T->right = R;
        return T;
      }
    }
  }
  if (!insertion_found && insertion_current) {
    privacy_split (&N->left, &N->right, T, N->x);
    return N;
  } else {
    return 0;
  }
}
