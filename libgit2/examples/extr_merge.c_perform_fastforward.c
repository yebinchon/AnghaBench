
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_object ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_OBJECT_COMMIT ;
 int fprintf (int ,char*,...) ;
 int git_checkout_tree (int *,int *,TYPE_1__*) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int *,int const*,int ) ;
 char* git_oid_tostr_s (int const*) ;
 int git_reference_create (int **,int *,char const*,int const*,int ,int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int *,char*) ;
 int git_reference_set_target (int **,int *,int const*,int *) ;
 char* git_reference_symbolic_target (int *) ;
 int git_repository_head (int **,int *) ;
 int stderr ;

__attribute__((used)) static int perform_fastforward(git_repository *repo, const git_oid *target_oid, int is_unborn)
{
 git_checkout_options ff_checkout_options = GIT_CHECKOUT_OPTIONS_INIT;
 git_reference *target_ref;
 git_reference *new_target_ref;
 git_object *target = ((void*)0);
 int err = 0;

 if (is_unborn) {
  const char *symbolic_ref;
  git_reference *head_ref;


  err = git_reference_lookup(&head_ref, repo, "HEAD");
  if (err != 0) {
   fprintf(stderr, "failed to lookup HEAD ref\n");
   return -1;
  }


  symbolic_ref = git_reference_symbolic_target(head_ref);


  err = git_reference_create(&target_ref, repo, symbolic_ref, target_oid, 0, ((void*)0));
  if (err != 0) {
   fprintf(stderr, "failed to create master reference\n");
   return -1;
  }

  git_reference_free(head_ref);
 } else {

  err = git_repository_head(&target_ref, repo);
  if (err != 0) {
   fprintf(stderr, "failed to get HEAD reference\n");
   return -1;
  }
 }


 err = git_object_lookup(&target, repo, target_oid, GIT_OBJECT_COMMIT);
 if (err != 0) {
  fprintf(stderr, "failed to lookup OID %s\n", git_oid_tostr_s(target_oid));
  return -1;
 }


 ff_checkout_options.checkout_strategy = GIT_CHECKOUT_SAFE;
 err = git_checkout_tree(repo, target, &ff_checkout_options);
 if (err != 0) {
  fprintf(stderr, "failed to checkout HEAD reference\n");
  return -1;
 }


 err = git_reference_set_target(&new_target_ref, target_ref, target_oid, ((void*)0));
 if (err != 0) {
  fprintf(stderr, "failed to move HEAD reference\n");
  return -1;
 }

 git_reference_free(target_ref);
 git_reference_free(new_target_ref);
 git_object_free(target);

 return 0;
}
