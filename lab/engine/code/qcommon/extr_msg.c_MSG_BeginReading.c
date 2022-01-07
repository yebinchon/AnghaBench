
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oob; scalar_t__ bit; scalar_t__ readcount; } ;
typedef TYPE_1__ msg_t ;


 int qfalse ;

void MSG_BeginReading( msg_t *msg ) {
 msg->readcount = 0;
 msg->bit = 0;
 msg->oob = qfalse;
}
