
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CreatePassages ;
 int PassageFlow ;
 int PassageMemory () ;
 int RunThreadsOnIndividual (int,int ,int ) ;
 int Sys_Printf (char*,int) ;
 int _printf (char*,...) ;
 int numportals ;
 int qfalse ;
 int qtrue ;

void CalcPassageVis( void ){
 PassageMemory();
 Sys_Printf( "\n--- CreatePassages (%d) ---\n", numportals * 2 );
 RunThreadsOnIndividual( numportals * 2, qtrue, CreatePassages );

 Sys_Printf( "\n--- PassageFlow (%d) ---\n", numportals * 2 );
 RunThreadsOnIndividual( numportals * 2, qtrue, PassageFlow );

}
