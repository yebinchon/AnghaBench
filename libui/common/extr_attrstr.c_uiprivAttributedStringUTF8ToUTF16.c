
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t* u8tou16; } ;
typedef TYPE_1__ uiAttributedString ;



size_t uiprivAttributedStringUTF8ToUTF16(const uiAttributedString *s, size_t n)
{
 return s->u8tou16[n];
}
