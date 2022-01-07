
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int iterator_rand; } ;
typedef TYPE_1__ git_revwalk ;
struct TYPE_8__ {int uninteresting; } ;
typedef TYPE_2__ git_commit_list_node ;


 int get_revision (TYPE_2__**,TYPE_1__*,int *) ;

__attribute__((used)) static int revwalk_next_unsorted(git_commit_list_node **object_out, git_revwalk *walk)
{
 int error;
 git_commit_list_node *next;

 while (!(error = get_revision(&next, walk, &walk->iterator_rand))) {

  if (!next->uninteresting) {
   *object_out = next;
   return 0;
  }
 }

 return error;
}
