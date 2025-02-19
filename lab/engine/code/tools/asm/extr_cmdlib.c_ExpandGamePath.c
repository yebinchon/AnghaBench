
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Error (char*) ;
 char* gamedir ;
 int * qdir ;
 int sprintf (char*,char*,char*,char const*) ;
 int strcpy (char*,char const*) ;

char *ExpandGamePath (const char *path)
{
 static char full[1024];
 if (!qdir[0])
  Error ("ExpandGamePath called without qdir set");
 if (path[0] == '/' || path[0] == '\\' || path[1] == ':') {
  strcpy( full, path );
  return full;
 }
 sprintf (full, "%s%s", gamedir, path);
 return full;
}
