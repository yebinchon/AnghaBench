
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* G_Alloc (int) ;
 int strlen (char const*) ;

char *G_NewString( const char *string ) {
 char *newb, *new_p;
 int i,l;

 l = strlen(string) + 1;

 newb = G_Alloc( l );

 new_p = newb;


 for ( i=0 ; i< l ; i++ ) {
  if (string[i] == '\\' && i < l-1) {
   i++;
   if (string[i] == 'n') {
    *new_p++ = '\n';
   } else {
    *new_p++ = '\\';
   }
  } else {
   *new_p++ = string[i];
  }
 }

 return newb;
}
