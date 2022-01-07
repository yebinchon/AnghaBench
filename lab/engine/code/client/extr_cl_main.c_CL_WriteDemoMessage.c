
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cursize; int* data; } ;
typedef TYPE_1__ msg_t ;
struct TYPE_5__ {int serverMessageSequence; int demofile; } ;


 int FS_Write (int*,int,int ) ;
 int LittleLong (int) ;
 TYPE_2__ clc ;

void CL_WriteDemoMessage ( msg_t *msg, int headerBytes ) {
 int len, swlen;


 len = clc.serverMessageSequence;
 swlen = LittleLong( len );
 FS_Write (&swlen, 4, clc.demofile);

 len = msg->cursize - headerBytes;
 swlen = LittleLong(len);
 FS_Write (&swlen, 4, clc.demofile);
 FS_Write ( msg->data + headerBytes, len, clc.demofile );
}
