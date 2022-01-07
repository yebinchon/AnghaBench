
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int loadparm; } ;
struct ipl_parameter_block {TYPE_1__ common; } ;


 int EBCASC (char*,size_t) ;
 size_t LOADPARM_LEN ;
 int memcpy (char*,int ,size_t) ;
 int strim (char*) ;

__attribute__((used)) static void reipl_get_ascii_loadparm(char *loadparm,
         struct ipl_parameter_block *ibp)
{
 memcpy(loadparm, ibp->common.loadparm, LOADPARM_LEN);
 EBCASC(loadparm, LOADPARM_LEN);
 loadparm[LOADPARM_LEN] = 0;
 strim(loadparm);
}
