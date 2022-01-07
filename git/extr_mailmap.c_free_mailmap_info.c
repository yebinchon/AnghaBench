
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mailmap_info {int email; int name; } ;


 int debug_mm (char*,char const*,int ,int ) ;
 int debug_str (int ) ;
 int free (int ) ;

__attribute__((used)) static void free_mailmap_info(void *p, const char *s)
{
 struct mailmap_info *mi = (struct mailmap_info *)p;
 debug_mm("mailmap: -- complex: '%s' -> '%s' <%s>\n",
   s, debug_str(mi->name), debug_str(mi->email));
 free(mi->name);
 free(mi->email);
}
