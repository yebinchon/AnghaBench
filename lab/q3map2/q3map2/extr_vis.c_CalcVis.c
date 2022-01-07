
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BasePortalVis ;
 int CalcFastVis () ;
 int CalcPassagePortalVis () ;
 int CalcPassageVis () ;
 int CalcPortalVis () ;
 int ClusterMerge (int) ;
 int RunThreadsOnIndividual (int,int ,int ) ;
 int SortPortals () ;
 int Sys_Printf (char*,...) ;
 char* ValueForKey (int *,char*) ;
 float atof (char const*) ;
 int * entities ;
 float farPlaneDist ;
 scalar_t__ fastvis ;
 scalar_t__ noPassageVis ;
 int numportals ;
 scalar_t__ passageVisOnly ;
 int portalclusters ;
 int qtrue ;
 int totalvis ;

void CalcVis( void ){
 int i;
 const char *value;



 farPlaneDist = 0.0f;
 value = ValueForKey( &entities[ 0 ], "_farplanedist" );
 if ( value[ 0 ] == '\0' ) {
  value = ValueForKey( &entities[ 0 ], "fogclip" );
 }
 if ( value[ 0 ] == '\0' ) {
  value = ValueForKey( &entities[ 0 ], "distancecull" );
 }
 if ( value[ 0 ] != '\0' ) {
  farPlaneDist = atof( value );
  if ( farPlaneDist > 0.0f ) {
   Sys_Printf( "farplane distance = %.1f\n", farPlaneDist );
  }
  else{
   farPlaneDist = 0.0f;
  }
 }



 Sys_Printf( "\n--- BasePortalVis (%d) ---\n", numportals * 2 );
 RunThreadsOnIndividual( numportals * 2, qtrue, BasePortalVis );



 SortPortals();

 if ( fastvis ) {
  CalcFastVis();
 }
 else if ( noPassageVis ) {
  CalcPortalVis();
 }
 else if ( passageVisOnly ) {
  CalcPassageVis();
 }
 else {
  CalcPassagePortalVis();
 }



 Sys_Printf( "creating leaf vis...\n" );
 for ( i = 0 ; i < portalclusters ; i++ )
  ClusterMerge( i );

 Sys_Printf( "Total visible clusters: %i\n", totalvis );
 Sys_Printf( "Average clusters visible: %i\n", totalvis / portalclusters );
}
