
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int myisspace (char) ;

__attribute__((used)) static int
__cmdline_find_option_bool(const char *cmdline, int max_cmdline_size,
      const char *option)
{
 char c;
 int pos = 0, wstart = 0;
 const char *opptr = ((void*)0);
 enum {
  st_wordstart = 0,
  st_wordcmp,
  st_wordskip,
 } state = st_wordstart;

 if (!cmdline)
  return -1;





 while (pos < max_cmdline_size) {
  c = *(char *)cmdline++;
  pos++;

  switch (state) {
  case st_wordstart:
   if (!c)
    return 0;
   else if (myisspace(c))
    break;

   state = st_wordcmp;
   opptr = option;
   wstart = pos;


  case st_wordcmp:
   if (!*opptr) {






    if (!c || myisspace(c))
     return wstart;





   } else if (!c) {




    return 0;
   } else if (c == *opptr++) {




    break;
   }
   state = st_wordskip;


  case st_wordskip:
   if (!c)
    return 0;
   else if (myisspace(c))
    state = st_wordstart;
   break;
  }
 }

 return 0;
}
