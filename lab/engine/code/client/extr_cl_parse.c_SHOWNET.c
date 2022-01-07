
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ readcount; } ;
typedef TYPE_1__ msg_t ;
struct TYPE_5__ {int integer; } ;


 int Com_Printf (char*,scalar_t__,char*) ;
 TYPE_2__* cl_shownet ;

void SHOWNET( msg_t *msg, char *s) {
 if ( cl_shownet->integer >= 2) {
  Com_Printf ("%3i:%s\n", msg->readcount-1, s);
 }
}
