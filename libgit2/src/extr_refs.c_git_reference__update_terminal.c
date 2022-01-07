
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int const git_signature ;
typedef int git_repository ;
struct TYPE_7__ {char const* symbolic; int oid; } ;
struct TYPE_8__ {char const* name; TYPE_1__ target; } ;
typedef TYPE_2__ git_reference ;
typedef int git_oid ;


 int GIT_ENOTFOUND ;
 scalar_t__ GIT_REFERENCE_DIRECT ;
 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int assert (int) ;
 int get_terminal (TYPE_2__**,int *,char const*,int ) ;
 int git_error_clear () ;
 int git_reference__log_signature (int const**,int *) ;
 int git_reference_free (TYPE_2__*) ;
 scalar_t__ git_reference_type (TYPE_2__*) ;
 int git_signature_free (int const*) ;
 int reference__create (TYPE_2__**,int *,char const*,int const*,int *,int,int const*,char const*,int *,int *) ;

int git_reference__update_terminal(
 git_repository *repo,
 const char *ref_name,
 const git_oid *oid,
 const git_signature *sig,
 const char *log_message)
{
 git_reference *ref = ((void*)0), *ref2 = ((void*)0);
 git_signature *who = ((void*)0);
 const git_signature *to_use;
 int error = 0;

 if (!sig && (error = git_reference__log_signature(&who, repo)) < 0)
  return error;

 to_use = sig ? sig : who;
 error = get_terminal(&ref, repo, ref_name, 0);


 if (error == GIT_ENOTFOUND && ref) {
  assert(git_reference_type(ref) == GIT_REFERENCE_SYMBOLIC);
  git_error_clear();
  error = reference__create(&ref2, repo, ref->target.symbolic, oid, ((void*)0), 0, to_use,
       log_message, ((void*)0), ((void*)0));
 } else if (error == GIT_ENOTFOUND) {
  git_error_clear();
  error = reference__create(&ref2, repo, ref_name, oid, ((void*)0), 0, to_use,
       log_message, ((void*)0), ((void*)0));
 } else if (error == 0) {
  assert(git_reference_type(ref) == GIT_REFERENCE_DIRECT);
  error = reference__create(&ref2, repo, ref->name, oid, ((void*)0), 1, to_use,
       log_message, &ref->target.oid, ((void*)0));
 }

 git_reference_free(ref2);
 git_reference_free(ref);
 git_signature_free(who);
 return error;
}
