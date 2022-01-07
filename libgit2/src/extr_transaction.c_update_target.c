
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int symbolic; int id; } ;
struct TYPE_5__ {scalar_t__ ref_type; int committed; int * message; int * sig; int payload; scalar_t__ remove; int * reflog; TYPE_1__ target; int name; } ;
typedef TYPE_2__ transaction_node ;
typedef int git_reference ;
typedef int git_refdb ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 scalar_t__ GIT_REFERENCE_DIRECT ;
 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int abort () ;
 int git_refdb_unlock (int *,int ,int,int,int *,int *,int *) ;
 int * git_reference__alloc (int ,int *,int *) ;
 int * git_reference__alloc_symbolic (int ,int ) ;
 int git_reference_free (int *) ;

__attribute__((used)) static int update_target(git_refdb *db, transaction_node *node)
{
 git_reference *ref;
 int error, update_reflog;

 if (node->ref_type == GIT_REFERENCE_DIRECT) {
  ref = git_reference__alloc(node->name, &node->target.id, ((void*)0));
 } else if (node->ref_type == GIT_REFERENCE_SYMBOLIC) {
  ref = git_reference__alloc_symbolic(node->name, node->target.symbolic);
 } else {
  abort();
 }

 GIT_ERROR_CHECK_ALLOC(ref);
 update_reflog = node->reflog == ((void*)0);

 if (node->remove) {
  error = git_refdb_unlock(db, node->payload, 2, 0, ref, ((void*)0), ((void*)0));
 } else if (node->ref_type == GIT_REFERENCE_DIRECT) {
  error = git_refdb_unlock(db, node->payload, 1, update_reflog, ref, node->sig, node->message);
 } else if (node->ref_type == GIT_REFERENCE_SYMBOLIC) {
  error = git_refdb_unlock(db, node->payload, 1, update_reflog, ref, node->sig, node->message);
 } else {
  abort();
 }

 git_reference_free(ref);
 node->committed = 1;

 return error;
}
