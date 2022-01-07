
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char PATHSEPERATOR ;
 int strlen (char*) ;

void StripFilename (char *path)
{
 int length;

 length = strlen(path)-1;
 while (length > 0 && path[length] != PATHSEPERATOR)
  length--;
 path[length] = 0;
}
