
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int strlen (char const*) ;

int getArgFrom (char *buffer, int b_len, const char *arg_name, char *where, int where_len) {
  char *where_end = where + where_len;
  int arg_len = strlen (arg_name);
  while (where < where_end) {
    char *start = where;
    while (where < where_end && (*where != '=' && *where != '&')) {
      ++where;
    }
    if (where == where_end) {
      buffer[0] = 0;
      return -1;
    }
    if (*where == '=') {
      if (arg_len == where - start && !memcmp (arg_name, start, arg_len)) {
        start = ++where;
        while (where < where_end && *where != '&') {
          ++where;
        }
        b_len--;
        if (where - start < b_len) {
          b_len = where - start;
        }
        memcpy (buffer, start, b_len);
        buffer[b_len] = 0;
        return b_len;
      }
      ++where;
    }
    while (where < where_end && *where != '&') {
      ++where;
    }
    if (where < where_end) {
      ++where;
    }
  }
  buffer[0] = 0;
  return -1;
}
