
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int config_error_nonbool (char const*) ;
 int display_notes_refs ;
 int strcmp (char const*,char*) ;
 int string_list_add_refs_by_glob (int *,char const*) ;

__attribute__((used)) static int notes_display_config(const char *k, const char *v, void *cb)
{
 int *load_refs = cb;

 if (*load_refs && !strcmp(k, "notes.displayref")) {
  if (!v)
   config_error_nonbool(k);
  string_list_add_refs_by_glob(&display_notes_refs, v);
 }

 return 0;
}
