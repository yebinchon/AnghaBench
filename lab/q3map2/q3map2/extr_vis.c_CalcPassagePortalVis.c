
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreatePassages ;
 int PassageMemory () ;
 int PassagePortalFlow ;
 int RunThreadsOnIndividual (int,int ,int ) ;
 int Sys_Printf (char*,...) ;
 int numportals ;
 int qfalse ;
 int qtrue ;

void CalcPassagePortalVis( void ){
 PassageMemory();
 Sys_Printf( "\n--- CreatePassages (%d) ---\n", numportals * 2 );
 RunThreadsOnIndividual( numportals * 2, qtrue, CreatePassages );

 Sys_Printf( "\n--- PassagePortalFlow (%d) ---\n", numportals * 2 );
 RunThreadsOnIndividual( numportals * 2, qtrue, PassagePortalFlow );

}
