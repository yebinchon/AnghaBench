
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addr_t ;


 int myisspace (char) ;
 char rdfs8 (int ) ;
 int set_fs (unsigned long) ;

int __cmdline_find_option(unsigned long cmdline_ptr, const char *option, char *buffer, int bufsize)
{
 addr_t cptr;
 char c;
 int len = -1;
 const char *opptr = ((void*)0);
 char *bufptr = buffer;
 enum {
  st_wordstart,
  st_wordcmp,
  st_wordskip,
  st_bufcpy
 } state = st_wordstart;

 if (!cmdline_ptr)
  return -1;

 cptr = cmdline_ptr & 0xf;
 set_fs(cmdline_ptr >> 4);

 while (cptr < 0x10000 && (c = rdfs8(cptr++))) {
  switch (state) {
  case st_wordstart:
   if (myisspace(c))
    break;


   state = st_wordcmp;
   opptr = option;


  case st_wordcmp:
   if (c == '=' && !*opptr) {
    len = 0;
    bufptr = buffer;
    state = st_bufcpy;
   } else if (myisspace(c)) {
    state = st_wordstart;
   } else if (c != *opptr++) {
    state = st_wordskip;
   }
   break;

  case st_wordskip:
   if (myisspace(c))
    state = st_wordstart;
   break;

  case st_bufcpy:
   if (myisspace(c)) {
    state = st_wordstart;
   } else {
    if (len < bufsize-1)
     *bufptr++ = c;
    len++;
   }
   break;
  }
 }

 if (bufsize)
  *bufptr = '\0';

 return len;
}
