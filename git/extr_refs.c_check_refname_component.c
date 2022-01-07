
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; char* buf; } ;


 int LOCK_SUFFIX ;
 int LOCK_SUFFIX_LEN ;
 int REFNAME_REFSPEC_PATTERN ;
 int memcmp (char const*,int ,int) ;
 unsigned char* refname_disposition ;
 int strbuf_addch (struct strbuf*,int) ;
 int strbuf_setlen (struct strbuf*,int) ;
 scalar_t__ strbuf_strip_suffix (struct strbuf*,int ) ;

__attribute__((used)) static int check_refname_component(const char *refname, int *flags,
       struct strbuf *sanitized)
{
 const char *cp;
 char last = '\0';
 size_t component_start = 0;

 if (sanitized)
  component_start = sanitized->len;

 for (cp = refname; ; cp++) {
  int ch = *cp & 255;
  unsigned char disp = refname_disposition[ch];

  if (sanitized && disp != 1)
   strbuf_addch(sanitized, ch);

  switch (disp) {
  case 1:
   goto out;
  case 2:
   if (last == '.') {
    if (sanitized)

     strbuf_setlen(sanitized, sanitized->len - 1);
    else
     return -1;
   }
   break;
  case 3:
   if (last == '@') {
    if (sanitized)
     sanitized->buf[sanitized->len-1] = '-';
    else
     return -1;
   }
   break;
  case 4:

   if (sanitized)
    sanitized->buf[sanitized->len-1] = '-';
   else
    return -1;
   break;
  case 5:
   if (!(*flags & REFNAME_REFSPEC_PATTERN)) {

    if (sanitized)
     sanitized->buf[sanitized->len-1] = '-';
    else
     return -1;
   }





   *flags &= ~ REFNAME_REFSPEC_PATTERN;
   break;
  }
  last = ch;
 }
out:
 if (cp == refname)
  return 0;

 if (refname[0] == '.') {
  if (sanitized)
   sanitized->buf[component_start] = '-';
  else
   return -1;
 }
 if (cp - refname >= LOCK_SUFFIX_LEN &&
     !memcmp(cp - LOCK_SUFFIX_LEN, LOCK_SUFFIX, LOCK_SUFFIX_LEN)) {
  if (!sanitized)
   return -1;

  while (strbuf_strip_suffix(sanitized, LOCK_SUFFIX)) {

  }
 }
 return cp - refname;
}
