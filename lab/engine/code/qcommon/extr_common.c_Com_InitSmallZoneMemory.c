
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Error (int ,char*,float) ;
 int ERR_FATAL ;
 int Z_ClearZone (int ,int) ;
 int calloc (int,int) ;
 int s_smallZoneTotal ;
 int smallzone ;

void Com_InitSmallZoneMemory( void ) {
 s_smallZoneTotal = 512 * 1024;
 smallzone = calloc( s_smallZoneTotal, 1 );
 if ( !smallzone ) {
  Com_Error( ERR_FATAL, "Small zone data failed to allocate %1.1f megs", (float)s_smallZoneTotal / (1024*1024) );
 }
 Z_ClearZone( smallzone, s_smallZoneTotal );
}
