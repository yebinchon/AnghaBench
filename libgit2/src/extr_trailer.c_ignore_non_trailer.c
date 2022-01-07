
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const COMMENT_LINE_CHAR ;
 scalar_t__ git__prefixcmp (char const*,char*) ;
 char* memchr (char const*,char,size_t) ;

__attribute__((used)) static size_t ignore_non_trailer(const char *buf, size_t len)
{
 size_t boc = 0, bol = 0;
 int in_old_conflicts_block = 0;
 size_t cutoff = len;

 while (bol < cutoff) {
  const char *next_line = memchr(buf + bol, '\n', len - bol);

  if (!next_line)
   next_line = buf + len;
  else
   next_line++;

  if (buf[bol] == COMMENT_LINE_CHAR || buf[bol] == '\n') {

   if (!boc)
    boc = bol;

  } else if (git__prefixcmp(buf + bol, "Conflicts:\n") == 0) {
   in_old_conflicts_block = 1;
   if (!boc)
    boc = bol;
  } else if (in_old_conflicts_block && buf[bol] == '\t') {
   ;
  } else if (boc) {

   boc = 0;
   in_old_conflicts_block = 0;
  }
  bol = next_line - buf;
 }
 return boc ? len - boc : len - cutoff;
}
