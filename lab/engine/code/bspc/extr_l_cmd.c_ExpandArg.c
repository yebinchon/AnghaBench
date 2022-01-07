
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int full ;


 int Q_getwd (char*,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

char *ExpandArg (char *path)
{
 static char full[1024];

 if (path[0] != '/' && path[0] != '\\' && path[1] != ':')
 {
  Q_getwd (full, sizeof(full));
  strcat (full, path);
 }
 else
  strcpy (full, path);
 return full;
}
