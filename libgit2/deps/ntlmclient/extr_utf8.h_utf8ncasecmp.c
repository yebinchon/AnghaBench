
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ utf8_int32_t ;


 void* utf8codepoint (void const*,scalar_t__*) ;
 scalar_t__ utf8codepointsize (scalar_t__) ;
 scalar_t__ utf8lwrcodepoint (scalar_t__) ;

int utf8ncasecmp(const void *src1, const void *src2, size_t n) {
  utf8_int32_t src1_cp, src2_cp, src1_orig_cp, src2_orig_cp;

  do {
    const unsigned char *const s1 = (const unsigned char *)src1;
    const unsigned char *const s2 = (const unsigned char *)src2;



    if (0 == n) {
      return 0;
    }

    if ((1 == n) && ((0xc0 == (0xe0 & *s1)) || (0xc0 == (0xe0 & *s2)))) {
      const utf8_int32_t c1 = (0xe0 & *s1);
      const utf8_int32_t c2 = (0xe0 & *s2);

      if (c1 < c2) {
        return -1;
      } else if (c1 > c2) {
        return 1;
      } else {
        return 0;
      }
    }

    if ((2 >= n) && ((0xe0 == (0xf0 & *s1)) || (0xe0 == (0xf0 & *s2)))) {
      const utf8_int32_t c1 = (0xf0 & *s1);
      const utf8_int32_t c2 = (0xf0 & *s2);

      if (c1 < c2) {
        return -1;
      } else if (c1 > c2) {
        return 1;
      } else {
        return 0;
      }
    }

    if ((3 >= n) && ((0xf0 == (0xf8 & *s1)) || (0xf0 == (0xf8 & *s2)))) {
      const utf8_int32_t c1 = (0xf8 & *s1);
      const utf8_int32_t c2 = (0xf8 & *s2);

      if (c1 < c2) {
        return -1;
      } else if (c1 > c2) {
        return 1;
      } else {
        return 0;
      }
    }

    src1 = utf8codepoint(src1, &src1_cp);
    src2 = utf8codepoint(src2, &src2_cp);
    n -= utf8codepointsize(src1_cp);


    src1_orig_cp = src1_cp;
    src2_orig_cp = src2_cp;


    src1_cp = utf8lwrcodepoint(src1_cp);
    src2_cp = utf8lwrcodepoint(src2_cp);


    if ((0 == src1_orig_cp) && (0 == src2_orig_cp)) {
      return 0;
    } else if (src1_cp == src2_cp) {
      continue;
    }


    if (src1_orig_cp < src2_orig_cp) {
      return -1;
    } else if (src1_orig_cp > src2_orig_cp) {
      return 1;
    }
  } while (0 < n);


  return 0;
}
