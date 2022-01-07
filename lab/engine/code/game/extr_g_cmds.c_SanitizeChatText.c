
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void SanitizeChatText( char *text ) {
 int i;

 for ( i = 0; text[i]; i++ ) {
  if ( text[i] == '\n' || text[i] == '\r' ) {
   text[i] = ' ';
  }
 }
}
