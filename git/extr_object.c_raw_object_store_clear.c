
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_object_store {int * packed_git; int packed_git_mru; scalar_t__ loaded_alternates; int * odb_tail; scalar_t__ commit_graph_attempted; int * commit_graph; int replace_map; int alternate_db; } ;


 int FREE_AND_NULL (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int close_object_store (struct raw_object_store*) ;
 int free_commit_graph (int *) ;
 int free_object_directories (struct raw_object_store*) ;
 int oidmap_free (int ,int) ;

void raw_object_store_clear(struct raw_object_store *o)
{
 FREE_AND_NULL(o->alternate_db);

 oidmap_free(o->replace_map, 1);
 FREE_AND_NULL(o->replace_map);

 free_commit_graph(o->commit_graph);
 o->commit_graph = ((void*)0);
 o->commit_graph_attempted = 0;

 free_object_directories(o);
 o->odb_tail = ((void*)0);
 o->loaded_alternates = 0;

 INIT_LIST_HEAD(&o->packed_git_mru);
 close_object_store(o);
 o->packed_git = ((void*)0);
}
