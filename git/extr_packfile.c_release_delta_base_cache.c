
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_base_cache_entry {int data; } ;


 int detach_delta_base_cache_entry (struct delta_base_cache_entry*) ;
 int free (int ) ;

__attribute__((used)) static inline void release_delta_base_cache(struct delta_base_cache_entry *ent)
{
 free(ent->data);
 detach_delta_base_cache_entry(ent);
}
