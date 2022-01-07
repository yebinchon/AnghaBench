
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chlen; } ;
typedef TYPE_1__ RichString ;


 int RichString_writeFrom (TYPE_1__*,int,char const*,int ,int ) ;
 int strlen (char const*) ;

void RichString_append(RichString* this, int attrs, const char* data) {
   RichString_writeFrom(this, attrs, data, this->chlen, strlen(data));
}
