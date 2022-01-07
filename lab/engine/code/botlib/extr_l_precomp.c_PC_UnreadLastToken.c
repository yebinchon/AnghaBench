
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int token; } ;
typedef TYPE_1__ source_t ;


 int PC_UnreadSourceToken (TYPE_1__*,int *) ;

void PC_UnreadLastToken(source_t *source)
{
 PC_UnreadSourceToken(source, &source->token);
}
