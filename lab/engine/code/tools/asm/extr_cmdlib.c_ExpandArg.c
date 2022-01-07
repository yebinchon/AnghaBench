
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_getwd (char*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;

char *ExpandArg (const char *path)
{
 static char full[1024];

 if (path[0] != '/' && path[0] != '\\' && path[1] != ':')
 {
  Q_getwd (full);
  strcat (full, path);
 }
 else
  strcpy (full, path);
 return full;
}
