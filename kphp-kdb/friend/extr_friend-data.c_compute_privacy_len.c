
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int* List; } ;
typedef TYPE_1__ privacy_t ;



__attribute__((used)) static int compute_privacy_len (privacy_t *T) {
  int t = T->y & 255;
  return t == 255 ? T->List[0] : t;
}
