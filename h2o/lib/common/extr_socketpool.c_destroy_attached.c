
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool_entry_t {int target_link; int all_link; } ;


 int destroy_detached (struct pool_entry_t*) ;
 int h2o_linklist_unlink (int *) ;

__attribute__((used)) static void destroy_attached(struct pool_entry_t *entry)
{
    h2o_linklist_unlink(&entry->all_link);
    h2o_linklist_unlink(&entry->target_link);
    destroy_detached(entry);
}
