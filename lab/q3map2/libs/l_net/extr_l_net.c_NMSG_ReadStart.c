
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int read; int readoverflow; } ;
typedef TYPE_1__ netmessage_t ;


 int qfalse ;

void NMSG_ReadStart( netmessage_t *msg ){
 msg->readoverflow = qfalse;
 msg->read = 4;
}
