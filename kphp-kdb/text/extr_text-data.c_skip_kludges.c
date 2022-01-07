
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ feed_byte (char,int*) ;

__attribute__((used)) static inline char *skip_kludges (char *text, int len) {
  char *ptr = text, *text_end = text + len, *kptr = text;
  int state = 5;

  while (ptr < text_end) {
    if (feed_byte (*ptr, &state)) {
      return ptr;
    }
    if (!*ptr || (state == 2 && (unsigned char) *ptr < 32 && *ptr != 9)) {
      return 0;
    }
    ++ptr;
  }

  if (state != 2) {
    kptr = ptr;
  }

  return kptr;
}
