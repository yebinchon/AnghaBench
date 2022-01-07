
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ utf8_int32_t ;


 void* utf8codepoint (void const*,scalar_t__*) ;
 scalar_t__ utf8lwrcodepoint (scalar_t__) ;

int utf8casecmp(const void *src1, const void *src2) {
  utf8_int32_t src1_cp, src2_cp, src1_orig_cp, src2_orig_cp;

  for (;;) {
    src1 = utf8codepoint(src1, &src1_cp);
    src2 = utf8codepoint(src2, &src2_cp);


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
  }
}
