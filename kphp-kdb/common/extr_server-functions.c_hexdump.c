
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char,...) ;
 int fputc (char,int ) ;
 int putc (char,int ) ;
 int stderr ;

int hexdump (void *start, void *end) {
  char *ptr = start, c;
  while (ptr < (char *) end) {
    int s = (char *) end - ptr, i;
    if (s > 16) {
      s = 16;
    }
    fprintf (stderr, "%08x", (int) (ptr - (char *) start));
    for (i = 0; i < 16; i++) {
      c = ' ';
      if (i == 8) {
        fputc (' ', stderr);
      }
      if (i < s) {
        fprintf (stderr, "%c%02x", c, (unsigned char) ptr[i]);
      } else {
        fprintf (stderr, "%c  ", c);
      }
    }
    c = ' ';
    fprintf (stderr, "%c  ", c);
    for (i = 0; i < s; i++) {
      putc ((unsigned char) ptr[i] < ' ' ? '.' : ptr[i], stderr);
    }
    putc ('\n', stderr);
    ptr += 16;
  }
  return end - start;
}
