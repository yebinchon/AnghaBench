
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fsl_diu_monitor_port { ____Placeholder_fsl_diu_monitor_port } fsl_diu_monitor_port ;


 int FSL_DIU_PORT_DVI ;

__attribute__((used)) static enum fsl_diu_monitor_port
mpc512x_valid_monitor_port(enum fsl_diu_monitor_port port)
{
 return FSL_DIU_PORT_DVI;
}
