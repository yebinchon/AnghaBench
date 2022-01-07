
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 scalar_t__ uiprivUTF16EncodeRune (int ,int *) ;
 char* uiprivUTF8DecodeRune (char const*,int ,int *) ;
 scalar_t__ uiprivUTF8EncodeRune (int ,char*) ;

__attribute__((used)) static void u8u16len(const char *str, size_t *n8, size_t *n16)
{
 uint32_t rune;
 char buf[4];
 uint16_t buf16[2];

 *n8 = 0;
 *n16 = 0;
 while (*str) {
  str = uiprivUTF8DecodeRune(str, 0, &rune);


  *n8 += uiprivUTF8EncodeRune(rune, buf);
  *n16 += uiprivUTF16EncodeRune(rune, buf16);
 }
}
