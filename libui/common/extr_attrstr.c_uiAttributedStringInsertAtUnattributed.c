
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* uint16_t ;
struct TYPE_6__ {size_t* u8tou16; size_t len; size_t u16len; char* s; char* u16; char* u16tou8; int attrs; } ;
typedef TYPE_1__ uiAttributedString ;


 int invalidateGraphemes (TYPE_1__*) ;
 int memmove (char*,char*,size_t) ;
 int onCodepointBoundary (TYPE_1__*,size_t) ;
 int resize (TYPE_1__*,size_t,size_t) ;
 int u8u16len (char const*,size_t*,size_t*) ;
 int uiprivAttrListInsertCharactersUnattributed (int ,size_t,size_t) ;
 size_t uiprivUTF16EncodeRune (int ,void**) ;
 char* uiprivUTF8DecodeRune (char const*,int ,int *) ;
 size_t uiprivUTF8EncodeRune (int ,char*) ;

void uiAttributedStringInsertAtUnattributed(uiAttributedString *s, const char *str, size_t at)
{
 uint32_t rune;
 char buf[4];
 uint16_t buf16[2];
 size_t n8, n16;
 size_t old, old16;
 size_t oldn8, oldn16;
 size_t oldlen, old16len;
 size_t at16;
 size_t i;

 if (!onCodepointBoundary(s, at)) {

 }

 at16 = 0;
 if (s->u8tou16 != ((void*)0))
  at16 = s->u8tou16[at];


 invalidateGraphemes(s);



 u8u16len(str, &n8, &n16);


 old = at;
 old16 = at16;
 oldlen = s->len;
 old16len = s->u16len;
 resize(s, s->len + n8, s->u16len + n16);



 memmove(
  s->s + at + n8,
  s->s + at,
  (oldlen - at) * sizeof (char));
 memmove(
  s->u16 + at16 + n16,
  s->u16 + at16,
  (old16len - at16) * sizeof (uint16_t));

 memmove(
  s->u8tou16 + at + n8,
  s->u8tou16 + at,
  (oldlen - at + 1) * sizeof (size_t));
 memmove(
  s->u16tou8 + at16 + n16,
  s->u16tou8 + at16,
  (old16len - at16 + 1) * sizeof (size_t));
 oldn8 = n8;
 oldn16 = n16;


 while (*str) {
  size_t n;

  str = uiprivUTF8DecodeRune(str, 0, &rune);
  n = uiprivUTF8EncodeRune(rune, buf);
  n16 = uiprivUTF16EncodeRune(rune, buf16);
  s->s[old] = buf[0];
  s->u8tou16[old] = old16;
  if (n > 1) {
   s->s[old + 1] = buf[1];
   s->u8tou16[old + 1] = old16;
  }
  if (n > 2) {
   s->s[old + 2] = buf[2];
   s->u8tou16[old + 2] = old16;
  }
  if (n > 3) {
   s->s[old + 3] = buf[3];
   s->u8tou16[old + 3] = old16;
  }
  s->u16[old16] = buf16[0];
  s->u16tou8[old16] = old;
  if (n16 > 1) {
   s->u16[old16 + 1] = buf16[1];
   s->u16tou8[old16 + 1] = old;
  }
  old += n;
  old16 += n16;
 }







 for (i = 0; i <= oldlen - at; i++)
  s->u8tou16[at + oldn8 + i] += s->u16len - old16len;
 for (i = 0; i <= old16len - at16; i++)
  s->u16tou8[at16 + oldn16 + i] += s->len - oldlen;


 uiprivAttrListInsertCharactersUnattributed(s->attrs, at, n8);
}
