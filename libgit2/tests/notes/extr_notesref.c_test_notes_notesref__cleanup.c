
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _cfg ;
 int * _note ;
 int * _repo ;
 int * _sig ;
 int cl_fixture_cleanup (char*) ;
 int git_config_free (int *) ;
 int git_note_free (int *) ;
 int git_repository_free (int *) ;
 int git_signature_free (int *) ;

void test_notes_notesref__cleanup(void)
{
 git_note_free(_note);
 _note = ((void*)0);

 git_signature_free(_sig);
 _sig = ((void*)0);

 git_config_free(_cfg);
 _cfg = ((void*)0);

 git_repository_free(_repo);
 _repo = ((void*)0);

 cl_fixture_cleanup("testrepo.git");
}
