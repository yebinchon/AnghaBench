
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ compat; } ;
typedef TYPE_1__ netchan_t ;
struct TYPE_10__ {int data; int cursize; } ;
typedef TYPE_2__ msg_t ;


 int CL_Netchan_Encode (TYPE_2__*) ;
 scalar_t__ CL_Netchan_TransmitNextFragment (TYPE_1__*) ;
 int Com_DPrintf (char*) ;
 int MSG_WriteByte (TYPE_2__*,int ) ;
 int Netchan_Transmit (TYPE_1__*,int ,int ) ;
 int clc_EOF ;

void CL_Netchan_Transmit( netchan_t *chan, msg_t* msg ) {
 MSG_WriteByte( msg, clc_EOF );






 Netchan_Transmit(chan, msg->cursize, msg->data);


 while(CL_Netchan_TransmitNextFragment(chan))
 {
  Com_DPrintf("WARNING: #462 unsent fragments (not supposed to happen!)\n");
 }
}
