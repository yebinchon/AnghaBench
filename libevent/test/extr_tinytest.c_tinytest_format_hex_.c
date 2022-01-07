
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (unsigned long) ;
 char* strdup (char*) ;

char *
tinytest_format_hex_(const void *val_, unsigned long len)
{
 const unsigned char *val = val_;
 char *result, *cp;
 size_t i;

 if (!val)
  return strdup("null");
 if (!(result = malloc(len*2+1)))
  return strdup("<allocation failure>");
 cp = result;
 for (i=0;i<len;++i) {
  *cp++ = "0123456789ABCDEF"[val[i] >> 4];
  *cp++ = "0123456789ABCDEF"[val[i] & 0x0f];
 }
 *cp = 0;
 return result;
}
