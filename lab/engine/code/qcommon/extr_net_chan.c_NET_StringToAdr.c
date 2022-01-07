
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int netadrtype_t ;
struct TYPE_5__ {void* port; int type; } ;
typedef TYPE_1__ netadr_t ;
typedef int base ;


 void* BigShort (short) ;
 int Com_Memset (TYPE_1__*,int ,int) ;
 int MAX_STRING_CHARS ;
 int NA_BAD ;
 int NA_LOOPBACK ;
 short PORT_SERVER ;
 int Q_CountChar (char*,char) ;
 int Q_strncpyz (char*,char const*,int) ;
 int Sys_StringToAdr (char*,TYPE_1__*,int ) ;
 scalar_t__ atoi (char*) ;
 char* strchr (char*,char) ;
 int strcmp (char const*,char*) ;

int NET_StringToAdr( const char *s, netadr_t *a, netadrtype_t family )
{
 char base[MAX_STRING_CHARS], *search;
 char *port = ((void*)0);

 if (!strcmp (s, "localhost")) {
  Com_Memset (a, 0, sizeof(*a));
  a->type = NA_LOOPBACK;

  return 1;
 }

 Q_strncpyz( base, s, sizeof( base ) );

 if(*base == '[' || Q_CountChar(base, ':') > 1)
 {

  search = strchr(base, ']');
  if(search)
  {
   *search = '\0';
   search++;

   if(*search == ':')
    port = search + 1;
  }

  if(*base == '[')
   search = base + 1;
  else
   search = base;
 }
 else
 {

  port = strchr( base, ':' );

  if ( port ) {
   *port = '\0';
   port++;
  }

  search = base;
 }

 if(!Sys_StringToAdr(search, a, family))
 {
  a->type = NA_BAD;
  return 0;
 }

 if(port)
 {
  a->port = BigShort((short) atoi(port));
  return 1;
 }
 else
 {
  a->port = BigShort(PORT_SERVER);
  return 2;
 }
}
