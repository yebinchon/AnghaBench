
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void Info_NextPair( const char **head, char *key, char *value ) {
 char *o;
 const char *s;

 s = *head;

 if ( *s == '\\' ) {
  s++;
 }
 key[0] = 0;
 value[0] = 0;

 o = key;
 while ( *s != '\\' ) {
  if ( !*s ) {
   *o = 0;
   *head = s;
   return;
  }
  *o++ = *s++;
 }
 *o = 0;
 s++;

 o = value;
 while ( *s != '\\' && *s ) {
  *o++ = *s++;
 }
 *o = 0;

 *head = s;
}
