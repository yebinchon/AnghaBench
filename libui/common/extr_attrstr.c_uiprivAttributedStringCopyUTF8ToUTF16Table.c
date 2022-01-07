
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int u8tou16; } ;
typedef TYPE_1__ uiAttributedString ;


 int memmove (size_t*,int ,size_t) ;
 scalar_t__ uiprivAlloc (size_t,char*) ;

size_t *uiprivAttributedStringCopyUTF8ToUTF16Table(const uiAttributedString *s, size_t *n)
{
 size_t *out;
 size_t nbytes;

 nbytes = (s->len + 1) * sizeof (size_t);
 *n = s->len;
 out = (size_t *) uiprivAlloc(nbytes, "size_t[] (uiAttributedString)");
 memmove(out, s->u8tou16, nbytes);
 return out;
}
