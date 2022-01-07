
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static int ToUpperCase(uint8_t* p) {
  if (p[0] < 0xc0) {
    if (p[0] >= 'a' && p[0] <= 'z') {
      p[0] ^= 32;
    }
    return 1;
  }

  if (p[0] < 0xe0) {
    p[1] ^= 32;
    return 2;
  }

  p[2] ^= 5;
  return 3;
}
