
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;
typedef int gentity_t ;


 char* ConcatArgs (int) ;
 int G_Say (int *,int *,int,char*) ;
 int SanitizeChatText (char*) ;
 int trap_Argc () ;

__attribute__((used)) static void Cmd_Say_f( gentity_t *ent, int mode, qboolean arg0 ) {
 char *p;

 if ( trap_Argc () < 2 && !arg0 ) {
  return;
 }

 if (arg0)
 {
  p = ConcatArgs( 0 );
 }
 else
 {
  p = ConcatArgs( 1 );
 }

 SanitizeChatText( p );

 G_Say( ent, ((void*)0), mode, p );
}
