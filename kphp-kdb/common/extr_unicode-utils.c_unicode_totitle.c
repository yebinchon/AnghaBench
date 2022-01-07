
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unicode_toupper (int) ;

int unicode_totitle (int code) {
  if ((unsigned int)(code - 0x1c4) < 9u ||
      (unsigned int)(code - 0x1f1) < 3u) {
    return ((code * 685) >> 11) * 3;
  }

  return unicode_toupper (code);
}
