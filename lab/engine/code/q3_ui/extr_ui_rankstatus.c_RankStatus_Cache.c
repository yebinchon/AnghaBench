
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RANKSTATUS_FRAME ;
 int trap_R_RegisterShaderNoMip (int ) ;

void RankStatus_Cache( void ) {
 trap_R_RegisterShaderNoMip( RANKSTATUS_FRAME );
}
