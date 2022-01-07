
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ readcount; scalar_t__ cursize; } ;
typedef TYPE_1__ msg_t ;
struct TYPE_6__ {int f; int i; } ;
typedef TYPE_2__ floatint_t ;


 int MSG_ReadBits (TYPE_1__*,int) ;

float MSG_ReadFloat( msg_t *msg ) {
 floatint_t dat;

 dat.i = MSG_ReadBits( msg, 32 );
 if ( msg->readcount > msg->cursize ) {
  dat.f = -1;
 }

 return dat.f;
}
