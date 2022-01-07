
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _pico_alloc (scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

char *_pico_clone_alloc( const char *str ) {
 char* cloned;


 if ( str == ((void*)0) ) {
  return ((void*)0);
 }


 cloned = _pico_alloc(strlen(str) + 1);
 if ( cloned == ((void*)0) ) {
  return ((void*)0);
 }


 strcpy(cloned, str);


 return cloned;
}
