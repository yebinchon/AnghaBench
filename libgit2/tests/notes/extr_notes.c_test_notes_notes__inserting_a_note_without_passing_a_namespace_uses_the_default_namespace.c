
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_note ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int _repo ;
 int assert_note_equal (int *,char*,int *) ;
 int cl_git_pass (int ) ;
 int create_note (int *,int *,char*,char*) ;
 int * git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_note_default_ref (int *,int ) ;
 int git_note_free (int *) ;
 int git_note_read (int **,int ,int *,int *) ;
 int git_oid_fromstr (int *,char*) ;

void test_notes_notes__inserting_a_note_without_passing_a_namespace_uses_the_default_namespace(void)
{
 git_oid note_oid, target_oid;
 git_note *note, *default_namespace_note;
 git_buf default_ref = GIT_BUF_INIT;

 cl_git_pass(git_oid_fromstr(&target_oid, "08b041783f40edfe12bb406c9c9a8a040177c125"));
 cl_git_pass(git_note_default_ref(&default_ref, _repo));

 create_note(&note_oid, ((void*)0), "08b041783f40edfe12bb406c9c9a8a040177c125", "hello world\n");

 cl_git_pass(git_note_read(&note, _repo, ((void*)0), &target_oid));
 cl_git_pass(git_note_read(&default_namespace_note, _repo, git_buf_cstr(&default_ref), &target_oid));

 assert_note_equal(note, "hello world\n", &note_oid);
 assert_note_equal(default_namespace_note, "hello world\n", &note_oid);

 git_buf_dispose(&default_ref);
 git_note_free(note);
 git_note_free(default_namespace_note);
}
