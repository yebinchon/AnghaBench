
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int sq_must_quote (char const) ;

__attribute__((used)) static size_t next_quote_pos(const char *s, ssize_t maxlen)
{
 size_t len;
 if (maxlen < 0) {
  for (len = 0; !sq_must_quote(s[len]); len++);
 } else {
  for (len = 0; len < maxlen && !sq_must_quote(s[len]); len++);
 }
 return len;
}
