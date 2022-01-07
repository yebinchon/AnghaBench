
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
typedef TYPE_1__ uiAttributedString ;


 int uiAttributedStringInsertAtUnattributed (TYPE_1__*,char const*,int ) ;

void uiAttributedStringAppendUnattributed(uiAttributedString *s, const char *str)
{
 uiAttributedStringInsertAtUnattributed(s, str, s->len);
}
