
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_writer {int dummy; } ;
struct object_array {int dummy; } ;
struct commit_list {int dummy; } ;


 int NOT_SHALLOW ;
 int SHALLOW ;
 int disable_commit_graph (int ) ;
 int free_commit_list (struct commit_list*) ;
 struct commit_list* get_shallow_commits_by_rev_list (int,char const**,int ,int ) ;
 int send_shallow (struct packet_writer*,struct commit_list*) ;
 int send_unshallow (struct packet_writer*,struct object_array*,struct object_array*) ;
 int the_repository ;

__attribute__((used)) static void deepen_by_rev_list(struct packet_writer *writer, int ac,
          const char **av,
          struct object_array *shallows,
          struct object_array *want_obj)
{
 struct commit_list *result;

 disable_commit_graph(the_repository);
 result = get_shallow_commits_by_rev_list(ac, av, SHALLOW, NOT_SHALLOW);
 send_shallow(writer, result);
 free_commit_list(result);
 send_unshallow(writer, shallows, want_obj);
}
