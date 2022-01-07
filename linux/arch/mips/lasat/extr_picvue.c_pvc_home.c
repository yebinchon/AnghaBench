
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOME_CMD ;
 int MODE_INST ;
 int pvc_write (int ,int ) ;

void pvc_home(void)
{
 pvc_write(HOME_CMD, MODE_INST);
}
