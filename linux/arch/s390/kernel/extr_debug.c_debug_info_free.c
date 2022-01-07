
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* active_pages; struct TYPE_5__* active_entries; } ;
typedef TYPE_1__ debug_info_t ;


 int debug_areas_free (TYPE_1__*) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void debug_info_free(debug_info_t *db_info)
{
 debug_areas_free(db_info);
 kfree(db_info->active_entries);
 kfree(db_info->active_pages);
 kfree(db_info);
}
