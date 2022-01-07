
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ucs2; struct TYPE_4__* utf8; } ;
typedef TYPE_1__ i3String ;


 int free (TYPE_1__*) ;

void i3string_free(i3String *str) {
    if (str == ((void*)0))
        return;
    free(str->utf8);
    free(str->ucs2);
    free(str);
}
