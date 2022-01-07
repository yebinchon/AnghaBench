
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DISPLAY ;
 int MODE_INST ;
 int MOVE_CMD ;
 int RIGHT ;
 int pvc_write (int,int ) ;

void pvc_move(u8 cmd)
{
 pvc_write(MOVE_CMD | (cmd & (DISPLAY|RIGHT)), MODE_INST);
}
