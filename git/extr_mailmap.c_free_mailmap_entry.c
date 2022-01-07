
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* nr; int strdup_strings; } ;
struct mailmap_entry {TYPE_1__ namemap; int email; int name; } ;


 int debug_mm (char*,char const*,char const*) ;
 char const* debug_str (int ) ;
 int free (int ) ;
 int free_mailmap_info ;
 int string_list_clear_func (TYPE_1__*,int ) ;

__attribute__((used)) static void free_mailmap_entry(void *p, const char *s)
{
 struct mailmap_entry *me = (struct mailmap_entry *)p;
 debug_mm("mailmap: removing entries for <%s>, with %d sub-entries\n",
   s, me->namemap.nr);
 debug_mm("mailmap: - simple: '%s' <%s>\n",
   debug_str(me->name), debug_str(me->email));

 free(me->name);
 free(me->email);

 me->namemap.strdup_strings = 1;
 string_list_clear_func(&me->namemap, free_mailmap_info);
}
