
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serverbuff ;
typedef int adrstr ;


 int MAX_FAVORITESERVERS ;
 int Q_stricmp (char*,char*) ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;
 char* va (char*,int) ;

void Favorites_Add( void )
{
 char adrstr[128];
 char serverbuff[128];
 int i;
 int best;

 trap_Cvar_VariableStringBuffer( "cl_currentServerAddress", serverbuff, sizeof(serverbuff) );
 if (!serverbuff[0])
  return;

 best = 0;
 for (i=0; i<MAX_FAVORITESERVERS; i++)
 {
  trap_Cvar_VariableStringBuffer( va("server%d",i+1), adrstr, sizeof(adrstr) );
  if (!Q_stricmp(serverbuff,adrstr))
  {

   return;
  }


  if (!adrstr[0] && !best)
   best = i+1;
 }

 if (best)
  trap_Cvar_Set( va("server%d",best), serverbuff);
}
