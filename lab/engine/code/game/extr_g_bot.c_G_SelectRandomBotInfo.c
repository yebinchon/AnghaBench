
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_CountBotPlayersByName (char*,int) ;
 char* Info_ValueForKey (int ,char*) ;
 int MAX_BOTS ;
 int MAX_CLIENTS ;
 int * g_botInfos ;
 int g_numBots ;
 int random () ;

int G_SelectRandomBotInfo( int team ) {
 int selection[MAX_BOTS];
 int n, num;
 int count, bestCount;
 char *value;


 if ( team != -1 && G_CountBotPlayersByName( ((void*)0), -1 ) < g_numBots ) {
  team = -1;
 }

 num = 0;
 bestCount = MAX_CLIENTS;
 for ( n = 0; n < g_numBots ; n++ ) {
  value = Info_ValueForKey( g_botInfos[n], "funname" );
  if ( !value[0] ) {
   value = Info_ValueForKey( g_botInfos[n], "name" );
  }

  count = G_CountBotPlayersByName( value, team );

  if ( count < bestCount ) {
   bestCount = count;
   num = 0;
  }

  if ( count == bestCount ) {
   selection[num++] = n;

   if ( num == MAX_BOTS ) {
    break;
   }
  }
 }

 if ( num > 0 ) {
  num = random() * ( num - 1 );
  return selection[num];
 }

 return -1;
}
