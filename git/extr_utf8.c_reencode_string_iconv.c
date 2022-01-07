
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;
typedef scalar_t__ iconv_ibp ;


 scalar_t__ E2BIG ;
 scalar_t__ errno ;
 int free (char*) ;
 size_t iconv (int ,scalar_t__*,size_t*,char**,size_t*) ;
 size_t st_add (size_t,int) ;
 size_t st_add3 (size_t,int ,int) ;
 int st_mult (size_t,int) ;
 char* xmalloc (size_t) ;
 char* xrealloc (char*,size_t) ;

char *reencode_string_iconv(const char *in, size_t insz, iconv_t conv,
       size_t bom_len, size_t *outsz_p)
{
 size_t outsz, outalloc;
 char *out, *outpos;
 iconv_ibp cp;

 outsz = insz;
 outalloc = st_add(outsz, 1 + bom_len);
 out = xmalloc(outalloc);
 outpos = out + bom_len;
 cp = (iconv_ibp)in;

 while (1) {
  size_t cnt = iconv(conv, &cp, &insz, &outpos, &outsz);

  if (cnt == (size_t) -1) {
   size_t sofar;
   if (errno != E2BIG) {
    free(out);
    return ((void*)0);
   }





   sofar = outpos - out;
   outalloc = st_add3(sofar, st_mult(insz, 2), 32);
   out = xrealloc(out, outalloc);
   outpos = out + sofar;
   outsz = outalloc - sofar - 1;
  }
  else {
   *outpos = '\0';
   if (outsz_p)
    *outsz_p = outpos - out;
   break;
  }
 }
 return out;
}
