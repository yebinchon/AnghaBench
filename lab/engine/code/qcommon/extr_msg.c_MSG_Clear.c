
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bit; int overflowed; scalar_t__ cursize; } ;
typedef TYPE_1__ msg_t ;


 int qfalse ;

void MSG_Clear( msg_t *buf ) {
 buf->cursize = 0;
 buf->overflowed = qfalse;
 buf->bit = 0;
}
