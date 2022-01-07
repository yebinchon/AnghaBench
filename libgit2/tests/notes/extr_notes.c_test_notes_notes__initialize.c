
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _repo ;
 int _sig ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int git_signature_now (int *,char*,char*) ;

void test_notes_notes__initialize(void)
{
 _repo = cl_git_sandbox_init("testrepo.git");
 cl_git_pass(git_signature_now(&_sig, "alice", "alice@example.com"));
}
