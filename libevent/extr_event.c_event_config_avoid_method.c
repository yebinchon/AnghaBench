
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_config_entry {int * avoid_method; } ;
struct event_config {int entries; } ;


 int TAILQ_INSERT_TAIL (int *,struct event_config_entry*,int ) ;
 int mm_free (struct event_config_entry*) ;
 struct event_config_entry* mm_malloc (int) ;
 int * mm_strdup (char const*) ;
 int next ;

int
event_config_avoid_method(struct event_config *cfg, const char *method)
{
 struct event_config_entry *entry = mm_malloc(sizeof(*entry));
 if (entry == ((void*)0))
  return (-1);

 if ((entry->avoid_method = mm_strdup(method)) == ((void*)0)) {
  mm_free(entry);
  return (-1);
 }

 TAILQ_INSERT_TAIL(&cfg->entries, entry, next);

 return (0);
}
