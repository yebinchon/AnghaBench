
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int str ;
struct TYPE_2__ {char* string; } ;


 int AddIP (char*) ;
 int MAX_CVAR_VALUE_STRING ;
 int Q_strncpyz (char*,char*,int) ;
 TYPE_1__ g_banIPs ;
 char* strchr (char*,char) ;

void G_ProcessIPBans(void)
{
 char *s, *t;
 char str[MAX_CVAR_VALUE_STRING];

 Q_strncpyz( str, g_banIPs.string, sizeof(str) );

 for (t = s = g_banIPs.string; *t; ) {
  s = strchr(s, ' ');
  if (!s)
   break;
  while (*s == ' ')
   *s++ = 0;
  if (*t)
   AddIP( t );
  t = s;
 }
}
