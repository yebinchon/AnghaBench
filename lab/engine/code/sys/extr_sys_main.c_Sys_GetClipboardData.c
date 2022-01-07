
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_strncpyz (char*,char*,size_t) ;
 char* SDL_GetClipboardText () ;
 int SDL_free (char*) ;
 char* Z_Malloc (size_t) ;
 int strlen (char*) ;
 int strtok (char*,char*) ;

char *Sys_GetClipboardData(void)
{



 char *data = ((void*)0);
 char *cliptext;

 if ( ( cliptext = SDL_GetClipboardText() ) != ((void*)0) ) {
  if ( cliptext[0] != '\0' ) {
   size_t bufsize = strlen( cliptext ) + 1;

   data = Z_Malloc( bufsize );
   Q_strncpyz( data, cliptext, bufsize );


   strtok( data, "\n\r\b" );
  }
  SDL_free( cliptext );
 }
 return data;

}
