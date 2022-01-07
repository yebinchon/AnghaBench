
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;

void ExtractFilePath (char *path, char *dest)
{
 char *src;

 src = path + strlen(path) - 1;




 while (src != path && *(src-1) != '\\' && *(src-1) != '/')
  src--;

 memcpy (dest, path, src-path);
 dest[src-path] = 0;
}
