
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_note_iterator ;


 int _repo ;
 int cl_git_fail (int ) ;
 int git_note_iterator_new (int **,int ,char*) ;

void test_notes_notes__empty_iterate(void)
{
 git_note_iterator *iter;

 cl_git_fail(git_note_iterator_new(&iter, _repo, "refs/notes/commits"));
}
