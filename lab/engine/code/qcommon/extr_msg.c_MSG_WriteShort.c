
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_t ;


 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 int MSG_WriteBits (int *,int,int) ;

void MSG_WriteShort( msg_t *sb, int c ) {





 MSG_WriteBits( sb, c, 16 );
}
