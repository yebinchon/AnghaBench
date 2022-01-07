
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int myisspace (char) ;

__attribute__((used)) static int
__cmdline_find_option(const char *cmdline, int max_cmdline_size,
        const char *option, char *buffer, int bufsize)
{
 char c;
 int pos = 0, len = -1;
 const char *opptr = ((void*)0);
 char *bufptr = buffer;
 enum {
  st_wordstart = 0,
  st_wordcmp,
  st_wordskip,
  st_bufcpy,
 } state = st_wordstart;

 if (!cmdline)
  return -1;





 while (pos++ < max_cmdline_size) {
  c = *(char *)cmdline++;
  if (!c)
   break;

  switch (state) {
  case st_wordstart:
   if (myisspace(c))
    break;

   state = st_wordcmp;
   opptr = option;


  case st_wordcmp:
   if ((c == '=') && !*opptr) {





    len = 0;
    bufptr = buffer;
    state = st_bufcpy;
    break;
   } else if (c == *opptr++) {




    break;
   }
   state = st_wordskip;


  case st_wordskip:
   if (myisspace(c))
    state = st_wordstart;
   break;

  case st_bufcpy:
   if (myisspace(c)) {
    state = st_wordstart;
   } else {





    if (++len < bufsize)
     *bufptr++ = c;
   }
   break;
  }
 }

 if (bufsize)
  *bufptr = '\0';

 return len;
}
