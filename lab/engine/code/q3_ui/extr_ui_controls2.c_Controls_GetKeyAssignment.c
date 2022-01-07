
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_stricmp (char*,char*) ;
 int trap_Key_GetBindingBuf (int,char*,int) ;

__attribute__((used)) static void Controls_GetKeyAssignment (char *command, int *twokeys)
{
 int count;
 int j;
 char b[256];

 twokeys[0] = twokeys[1] = -1;
 count = 0;

 for ( j = 0; j < 256; j++ )
 {
  trap_Key_GetBindingBuf( j, b, 256 );
  if ( *b == 0 ) {
   continue;
  }
  if ( !Q_stricmp( b, command ) ) {
   twokeys[count] = j;
   count++;
   if (count == 2)
    break;
  }
 }
}
