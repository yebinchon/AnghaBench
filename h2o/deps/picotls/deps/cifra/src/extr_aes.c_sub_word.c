
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;


 size_t byte (int ,int) ;
 int select_u8x4 (size_t*,size_t*,size_t*,size_t*,size_t const*,int) ;
 int word4 (size_t,size_t,size_t,size_t) ;

__attribute__((used)) static uint32_t sub_word(uint32_t w, const uint8_t *sbox)
{
  uint8_t a = byte(w, 0),
          b = byte(w, 1),
          c = byte(w, 2),
          d = byte(w, 3);



  a = sbox[a];
  b = sbox[b];
  c = sbox[c];
  d = sbox[d];

  return word4(a, b, c, d);
}
