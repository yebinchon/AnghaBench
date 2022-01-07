
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 char* GIT_NOTES_DEFAULT_REF ;
 int _cfg ;
 int _note ;
 int _repo ;
 int _sig ;
 int cl_assert_equal_oid (int ,int *) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_config_delete_entry (int ,char*) ;
 int git_config_set_string (int ,char*,char*) ;
 int git_note_create (int *,int ,int *,int ,int ,int *,char*,int ) ;
 int git_note_default_ref (TYPE_1__*,int ) ;
 int git_note_free (int ) ;
 int git_note_id (int ) ;
 int git_note_message (int ) ;
 int git_note_read (int *,int ,char*,int *) ;
 int git_oid_fromstr (int *,char*) ;
 int git_repository_config (int *,int ) ;
 int git_signature_now (int *,char*,char*) ;

void test_notes_notesref__config_corenotesref(void)
{
 git_oid oid, note_oid;
 git_buf default_ref = GIT_BUF_INIT;

 cl_git_pass(git_signature_now(&_sig, "alice", "alice@example.com"));
 cl_git_pass(git_oid_fromstr(&oid, "8496071c1b46c854b31185ea97743be6a8774479"));

 cl_git_pass(git_repository_config(&_cfg, _repo));

 cl_git_pass(git_config_set_string(_cfg, "core.notesRef", "refs/notes/mydefaultnotesref"));

 cl_git_pass(git_note_create(&note_oid, _repo, ((void*)0), _sig, _sig, &oid, "test123test\n", 0));

 cl_git_pass(git_note_read(&_note, _repo, ((void*)0), &oid));
 cl_assert_equal_s("test123test\n", git_note_message(_note));
 cl_assert_equal_oid(git_note_id(_note), &note_oid);

 git_note_free(_note);

 cl_git_pass(git_note_read(&_note, _repo, "refs/notes/mydefaultnotesref", &oid));
 cl_assert_equal_s("test123test\n", git_note_message(_note));
 cl_assert_equal_oid(git_note_id(_note), &note_oid);

 cl_git_pass(git_note_default_ref(&default_ref, _repo));
 cl_assert_equal_s("refs/notes/mydefaultnotesref", default_ref.ptr);
 git_buf_clear(&default_ref);

 cl_git_pass(git_config_delete_entry(_cfg, "core.notesRef"));

 cl_git_pass(git_note_default_ref(&default_ref, _repo));
 cl_assert_equal_s(GIT_NOTES_DEFAULT_REF, default_ref.ptr);

 git_buf_dispose(&default_ref);
}
