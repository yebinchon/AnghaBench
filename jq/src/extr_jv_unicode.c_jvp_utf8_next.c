
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UTF8_CONTINUATION_BYTE ;
 int assert (int) ;
 unsigned int* utf8_coding_bits ;
 int* utf8_coding_length ;
 int* utf8_first_codepoint ;

const char* jvp_utf8_next(const char* in, const char* end, int* codepoint_ret) {
  assert(in <= end);
  if (in == end) {
    return 0;
  }
  int codepoint = -1;
  unsigned char first = (unsigned char)in[0];
  int length = utf8_coding_length[first];
  if ((first & 0x80) == 0) {

    codepoint = first;
    length = 1;
  } else if (length == 0 || length == UTF8_CONTINUATION_BYTE) {

    length = 1;
  } else if (in + length > end) {

    length = end - in;
  } else {
    codepoint = ((unsigned)in[0]) & utf8_coding_bits[first];
    for (int i=1; i<length; i++) {
      unsigned ch = (unsigned char)in[i];
      if (utf8_coding_length[ch] != UTF8_CONTINUATION_BYTE){

        codepoint = -1;
        length = i;
        break;
      }
      codepoint = (codepoint << 6) | (ch & 0x3f);
    }
    if (codepoint < utf8_first_codepoint[length]) {

      codepoint = -1;
    }
    if (0xD800 <= codepoint && codepoint <= 0xDFFF) {

      codepoint = -1;
    }
    if (codepoint > 0x10FFFF) {

      codepoint = -1;
    }
  }
  assert(length > 0);
  *codepoint_ret = codepoint;
  return in + length;
}
