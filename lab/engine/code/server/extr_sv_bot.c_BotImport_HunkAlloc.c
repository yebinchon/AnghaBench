
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 void* Hunk_Alloc (int,int ) ;
 scalar_t__ Hunk_CheckMark () ;
 int h_high ;

__attribute__((used)) static void *BotImport_HunkAlloc( int size ) {
 if( Hunk_CheckMark() ) {
  Com_Error( ERR_DROP, "SV_Bot_HunkAlloc: Alloc with marks already set" );
 }
 return Hunk_Alloc( size, h_high );
}
