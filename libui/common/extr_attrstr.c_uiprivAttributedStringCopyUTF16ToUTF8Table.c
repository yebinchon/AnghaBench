
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int u16len; int u16tou8; } ;
typedef TYPE_1__ uiAttributedString ;


 int memmove (size_t*,int ,size_t) ;
 scalar_t__ uiprivAlloc (size_t,char*) ;

size_t *uiprivAttributedStringCopyUTF16ToUTF8Table(const uiAttributedString *s, size_t *n)
{
 size_t *out;
 size_t nbytes;

 nbytes = (s->u16len + 1) * sizeof (size_t);
 *n = s->u16len;
 out = (size_t *) uiprivAlloc(nbytes, "size_t[] (uiAttributedString)");
 memmove(out, s->u16tou8, nbytes);
 return out;
}
