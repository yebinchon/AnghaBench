
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern_list {char* filebuf; } ;


 int add_pattern (char*,char const*,int,struct pattern_list*,int) ;
 scalar_t__ skip_utf8_bom (char**,size_t) ;
 int trim_trailing_spaces (char*) ;

__attribute__((used)) static int add_patterns_from_buffer(char *buf, size_t size,
        const char *base, int baselen,
        struct pattern_list *pl)
{
 int i, lineno = 1;
 char *entry;

 pl->filebuf = buf;

 if (skip_utf8_bom(&buf, size))
  size -= buf - pl->filebuf;

 entry = buf;

 for (i = 0; i < size; i++) {
  if (buf[i] == '\n') {
   if (entry != buf + i && entry[0] != '#') {
    buf[i - (i && buf[i-1] == '\r')] = 0;
    trim_trailing_spaces(entry);
    add_pattern(entry, base, baselen, pl, lineno);
   }
   lineno++;
   entry = buf + i + 1;
  }
 }
 return 0;
}
