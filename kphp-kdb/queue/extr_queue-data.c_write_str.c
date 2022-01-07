
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C (char,char) ;
 int sprintf (char*,char*,char) ;

int write_str (char *d, char *s, int sn) {
  char *st = d;
  int i;
  for (i = 0; i < sn; i++) {
    char c = s[i];

    switch (c) {
      case '"': *d++ = '\\', *d++ = '"'; break;;
      case '\\': *d++ = '\\', *d++ = '\\'; break;;
      case '/': *d++ = '\\', *d++ = '/'; break;;
      case '\b': *d++ = '\\', *d++ = 'b'; break;;
      case '\f': *d++ = '\\', *d++ = 'f'; break;;
      case '\n': *d++ = '\\', *d++ = 'n'; break;;
      case '\r': *d++ = '\\', *d++ = 'r'; break;;
      case '\t': *d++ = '\\', *d++ = 't'; break;;
      default:
        if ((unsigned char)c >= 32) {
          *d++ = c;
        } else {

          d += sprintf (d,"\\u%04x", c);
        }
    }

  }
  return d - st;
}
