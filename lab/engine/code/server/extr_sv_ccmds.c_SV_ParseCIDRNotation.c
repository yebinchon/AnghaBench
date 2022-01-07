
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ netadr_t ;


 scalar_t__ NA_IP ;
 int NA_UNSPEC ;
 int NET_StringToAdr (char*,TYPE_1__*,int ) ;
 int atoi (char*) ;
 int qfalse ;
 int qtrue ;
 char* strchr (char*,char) ;

__attribute__((used)) static qboolean SV_ParseCIDRNotation(netadr_t *dest, int *mask, char *adrstr)
{
 char *suffix;

 suffix = strchr(adrstr, '/');
 if(suffix)
 {
  *suffix = '\0';
  suffix++;
 }

 if(!NET_StringToAdr(adrstr, dest, NA_UNSPEC))
  return qtrue;

 if(suffix)
 {
  *mask = atoi(suffix);

  if(dest->type == NA_IP)
  {
   if(*mask < 1 || *mask > 32)
    *mask = 32;
  }
  else
  {
   if(*mask < 1 || *mask > 128)
    *mask = 128;
  }
 }
 else if(dest->type == NA_IP)
  *mask = 32;
 else
  *mask = 128;

 return qfalse;
}
