
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int orientation; } ;
typedef TYPE_1__ Image ;






__attribute__((used)) static void fix_angle_using_orientation (Image *image, int *angle) {
  switch (image->orientation) {
    case 130:
      (*angle) += 2;
      break;
    case 128:
      (*angle) += 1;
      break;
    case 129:
      (*angle) += 3;
      break;
    default:
      break;
  }
}
