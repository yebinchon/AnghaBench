
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modversion_info {char* name; } ;


 int memmove (char*,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void dedotify_versions(struct modversion_info *vers,
         unsigned long size)
{
 struct modversion_info *end;

 for (end = (void *)vers + size; vers < end; vers++)
  if (vers->name[0] == '.') {
   memmove(vers->name, vers->name+1, strlen(vers->name));
  }
}
