
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {size_t* u8tou16; size_t* s; size_t len; size_t* u16; size_t u16len; size_t* u16tou8; int attrs; } ;
typedef TYPE_1__ uiAttributedString ;


 int invalidateGraphemes (TYPE_1__*) ;
 int memmove (size_t*,size_t*,size_t) ;
 int onCodepointBoundary (TYPE_1__*,size_t) ;
 int resize (TYPE_1__*,size_t,size_t) ;
 int uiprivAttrListRemoveCharacters (int ,size_t,size_t) ;

void uiAttributedStringDelete(uiAttributedString *s, size_t start, size_t end)
{
 size_t start16, end16;
 size_t count, count16;
 size_t i;

 if (!onCodepointBoundary(s, start)) {

 }
 if (!onCodepointBoundary(s, end)) {

 }

 count = end - start;
 start16 = s->u8tou16[start];
 end16 = s->u8tou16[end];
 count16 = end16 - start16;

 invalidateGraphemes(s);


 memmove(
  s->s + start,
  s->s + end,
  (s->len - end) * sizeof (char));
 memmove(
  s->u16 + start16,
  s->u16 + end16,
  (s->u16len - end16) * sizeof (uint16_t));

 memmove(
  s->u8tou16 + start,
  s->u8tou16 + end,
  (s->len - end + 1) * sizeof (size_t));
 memmove(
  s->u16tou8 + start16,
  s->u16tou8 + end16,
  (s->u16len - end16 + 1) * sizeof (size_t));



 for (i = 0; i <= (s->len - end); i++)
  s->u8tou16[start + i] -= count16;
 for (i = 0; i <= (s->u16len - end16); i++)
  s->u16tou8[start16 + i] -= count;


 s->s[start + (s->len - end)] = 0;
 s->u16[start16 + (s->u16len - end16)] = 0;


 uiprivAttrListRemoveCharacters(s->attrs, start, end);


 resize(s, s->len - count, s->u16len - count16);
}
