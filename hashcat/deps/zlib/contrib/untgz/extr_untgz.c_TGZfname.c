
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 char const** TGZsuffix ;
 scalar_t__ access (char*,int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;

char *TGZfname (const char *arcname)
{
  static char buffer[1024];
  int origlen,i;

  strcpy(buffer,arcname);
  origlen = strlen(buffer);

  for (i=0; TGZsuffix[i]; i++)
    {
       strcpy(buffer+origlen,TGZsuffix[i]);
       if (access(buffer,F_OK) == 0)
         return buffer;
    }
  return ((void*)0);
}
