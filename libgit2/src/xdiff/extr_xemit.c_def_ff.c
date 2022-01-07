
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 int memcpy (char*,char const*,long) ;

__attribute__((used)) static long def_ff(const char *rec, long len, char *buf, long sz, void *priv)
{
 (void)priv;

 if (len > 0 &&
   (isalpha((unsigned char)*rec) ||
    *rec == '_' ||
    *rec == '$')) {
  if (len > sz)
   len = sz;
  while (0 < len && isspace((unsigned char)rec[len - 1]))
   len--;
  memcpy(buf, rec, len);
  return len;
 }
 return -1;
}
