
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char*,char*,unsigned int*) ;

__attribute__((used)) static int unescape(char *_dst, char *_src, size_t len)
{
 int ret = 0;
 char *src = _src;
 char *dst = _dst;
 unsigned int ch;

 while (*src) {
  if (*src == '\\' && *(src+1) == 'x') {
   sscanf(src + 2, "%2x", &ch);
   src += 4;
   *dst++ = (unsigned char)ch;
  } else {
   *dst++ = *src++;
  }
  ret++;
 }
 return ret;
}
