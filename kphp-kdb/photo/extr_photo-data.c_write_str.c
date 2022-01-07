
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C (char,char) ;
 int likely (int) ;

int write_str (char *d, int mx_len, char *s) {
  int tmp = mx_len;
  while (*s) {

    switch (*s) {
      case '"': if (likely (--mx_len > 0)) *d++ = '\\'; if (likely (--mx_len > 0)) *d++ = '"'; break;;
      case '\\': if (likely (--mx_len > 0)) *d++ = '\\'; if (likely (--mx_len > 0)) *d++ = '\\'; break;;
      case '/': if (likely (--mx_len > 0)) *d++ = '\\'; if (likely (--mx_len > 0)) *d++ = '/'; break;;
      case '\b': if (likely (--mx_len > 0)) *d++ = '\\'; if (likely (--mx_len > 0)) *d++ = 'b'; break;;
      case '\f': if (likely (--mx_len > 0)) *d++ = '\\'; if (likely (--mx_len > 0)) *d++ = 'f'; break;;
      case '\n': if (likely (--mx_len > 0)) *d++ = '\\'; if (likely (--mx_len > 0)) *d++ = 'n'; break;;
      case '\r': if (likely (--mx_len > 0)) *d++ = '\\'; if (likely (--mx_len > 0)) *d++ = 'r'; break;;
      case '\t': if (likely (--mx_len > 0)) *d++ = '\\'; if (likely (--mx_len > 0)) *d++ = 't'; break;;
      default:
        if (likely (--mx_len > 0)) *d++ = *s;
    }

    s++;
  }
  *d = 0;
  return tmp - mx_len;
}
