
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int wchar_t ;
typedef unsigned int Byte ;


 unsigned int const MAKE_CHAR_UPPER (unsigned int) ;
 int strlen (char const*) ;

__attribute__((used)) static unsigned FindItem(const char * const *items, unsigned num, const wchar_t *s, unsigned len)
{
  unsigned i;
  for (i = 0; i < num; i++)
  {
    const char *item = items[i];
    unsigned itemLen = (unsigned)strlen(item);
    unsigned j;
    if (len != itemLen)
      continue;
    for (j = 0; j < len; j++)
    {
      unsigned c = (Byte)item[j];
      if (c != s[j] && MAKE_CHAR_UPPER(c) != s[j])
        break;
    }
    if (j == len)
      return i;
  }
  return i;
}
