
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int MAX_INFO_KEY ;
 scalar_t__ MAX_INFO_STRING ;
 int MAX_INFO_VALUE ;
 int memmove (char*,char*,scalar_t__) ;
 scalar_t__ strchr (char const*,char) ;
 int strcmp (char const*,char*) ;
 scalar_t__ strlen (char*) ;

void Info_RemoveKey( char *s, const char *key ) {
 char *start;
 char pkey[MAX_INFO_KEY];
 char value[MAX_INFO_VALUE];
 char *o;

 if ( strlen( s ) >= MAX_INFO_STRING ) {
  Com_Error( ERR_DROP, "Info_RemoveKey: oversize infostring" );
 }

 if (strchr (key, '\\')) {
  return;
 }

 while (1)
 {
  start = s;
  if (*s == '\\')
   s++;
  o = pkey;
  while (*s != '\\')
  {
   if (!*s)
    return;
   *o++ = *s++;
  }
  *o = 0;
  s++;

  o = value;
  while (*s != '\\' && *s)
  {
   if (!*s)
    return;
   *o++ = *s++;
  }
  *o = 0;

  if (!strcmp (key, pkey) )
  {
   memmove(start, s, strlen(s) + 1);

   return;
  }

  if (!*s)
   return;
 }

}
