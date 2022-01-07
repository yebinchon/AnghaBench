
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint16_t ;
struct TYPE_3__ {size_t len; char* s; size_t* u8tou16; size_t u16len; char* u16; size_t* u16tou8; } ;
typedef TYPE_1__ uiAttributedString ;


 scalar_t__ uiprivRealloc (char*,int,char*) ;

__attribute__((used)) static void resize(uiAttributedString *s, size_t u8, size_t u16)
{
 s->len = u8;
 s->s = (char *) uiprivRealloc(s->s, (s->len + 1) * sizeof (char), "char[] (uiAttributedString)");
 s->u8tou16 = (size_t *) uiprivRealloc(s->u8tou16, (s->len + 1) * sizeof (size_t), "size_t[] (uiAttributedString)");
 s->u16len = u16;
 s->u16 = (uint16_t *) uiprivRealloc(s->u16, (s->u16len + 1) * sizeof (uint16_t), "uint16_t[] (uiAttributedString)");
 s->u16tou8 = (size_t *) uiprivRealloc(s->u16tou8, (s->u16len + 1) * sizeof (size_t), "size_t[] (uiAttributedString)");
}
