
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void Name_PlayerNameCompletion( const char **names, int nameCount, void(*callback)(const char *s) )
{
 int i;

 for( i = 0; i < nameCount; i++ ) {
  callback( names[ i ] );
 }
}
