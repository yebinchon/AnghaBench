
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int readcount; int bit; } ;
typedef TYPE_1__ msg_t ;


 int Huff_getBloc () ;
 int Huff_setBloc (int const) ;
 int MSG_ReadByte (TYPE_1__*) ;

int MSG_LookaheadByte( msg_t *msg ) {
 const int bloc = Huff_getBloc();
 const int readcount = msg->readcount;
 const int bit = msg->bit;
 int c = MSG_ReadByte(msg);
 Huff_setBloc(bloc);
 msg->readcount = readcount;
 msg->bit = bit;
 return c;
}
