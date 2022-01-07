
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_writer {int dummy; } ;
struct object_array {int nr; TYPE_1__* objects; } ;
struct object {int flags; } ;
struct commit_list {int dummy; } ;
struct TYPE_2__ {struct object* item; } ;


 int INFINITE_DEPTH ;
 int NOT_SHALLOW ;
 struct object_array OBJECT_ARRAY_INIT ;
 int SHALLOW ;
 int check_ref ;
 int for_each_namespaced_ref (int ,int *) ;
 int free_commit_list (struct commit_list*) ;
 int get_reachable_list (struct object_array*,struct object_array*) ;
 struct commit_list* get_shallow_commits (struct object_array*,int,int ,int ) ;
 int head_ref_namespaced (int ,int *) ;
 int is_repository_shallow (int ) ;
 int object_array_clear (struct object_array*) ;
 int send_shallow (struct packet_writer*,struct commit_list*) ;
 int send_unshallow (struct packet_writer*,struct object_array*,struct object_array*) ;
 int the_repository ;

__attribute__((used)) static void deepen(struct packet_writer *writer, int depth, int deepen_relative,
     struct object_array *shallows, struct object_array *want_obj)
{
 if (depth == INFINITE_DEPTH && !is_repository_shallow(the_repository)) {
  int i;

  for (i = 0; i < shallows->nr; i++) {
   struct object *object = shallows->objects[i].item;
   object->flags |= NOT_SHALLOW;
  }
 } else if (deepen_relative) {
  struct object_array reachable_shallows = OBJECT_ARRAY_INIT;
  struct commit_list *result;





  head_ref_namespaced(check_ref, ((void*)0));
  for_each_namespaced_ref(check_ref, ((void*)0));

  get_reachable_list(shallows, &reachable_shallows);
  result = get_shallow_commits(&reachable_shallows,
          depth + 1,
          SHALLOW, NOT_SHALLOW);
  send_shallow(writer, result);
  free_commit_list(result);
  object_array_clear(&reachable_shallows);
 } else {
  struct commit_list *result;

  result = get_shallow_commits(want_obj, depth,
          SHALLOW, NOT_SHALLOW);
  send_shallow(writer, result);
  free_commit_list(result);
 }

 send_unshallow(writer, shallows, want_obj);
}
