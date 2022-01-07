
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CS_ITEMS ;
 int G_Printf (char*,int) ;
 int MAX_ITEMS ;
 int bg_numItems ;
 scalar_t__* itemRegistered ;
 int trap_SetConfigstring (int ,char*) ;

void SaveRegisteredItems( void ) {
 char string[MAX_ITEMS+1];
 int i;
 int count;

 count = 0;
 for ( i = 0 ; i < bg_numItems ; i++ ) {
  if ( itemRegistered[i] ) {
   count++;
   string[i] = '1';
  } else {
   string[i] = '0';
  }
 }
 string[ bg_numItems ] = 0;

 G_Printf( "%i items registered\n", count );
 trap_SetConfigstring(CS_ITEMS, string);
}
