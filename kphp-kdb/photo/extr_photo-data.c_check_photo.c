
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int mode ;

int check_photo (char *photo, int photo_len) {
  if (photo_len >= 126) {
    return 0;
  }
  assert (photo_len >= 0);

  switch (mode) {
    case 129:
      return 1;
    case 128:
      return 1;
    case 130:
      return 1;
    default:
      assert ("Unsupported mode" && 0);
  }
}
