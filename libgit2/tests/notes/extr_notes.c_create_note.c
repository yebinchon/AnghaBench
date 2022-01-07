
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int _repo ;
 int _sig ;
 int cl_git_pass (int ) ;
 int git_note_create (int *,int ,char const*,int ,int ,int *,char const*,int ) ;
 int git_oid_fromstr (int *,char const*) ;

__attribute__((used)) static void create_note(git_oid *note_oid, const char *canonical_namespace, const char *target_sha, const char *message)
{
 git_oid oid;

 cl_git_pass(git_oid_fromstr(&oid, target_sha));
 cl_git_pass(git_note_create(note_oid, _repo, canonical_namespace, _sig, _sig, &oid, message, 0));
}
