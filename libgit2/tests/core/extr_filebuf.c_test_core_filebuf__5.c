
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * buffer; } ;
typedef TYPE_1__ git_filebuf ;


 TYPE_1__ GIT_FILEBUF_INIT ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int git_filebuf_commit (TYPE_1__*) ;
 int git_filebuf_open (TYPE_1__*,char*,int ,int) ;
 int git_filebuf_printf (TYPE_1__*,char*,char*) ;
 int p_unlink (char*) ;

void test_core_filebuf__5(void)
{
 git_filebuf file = GIT_FILEBUF_INIT;
 char test[] = "test";

 cl_assert(file.buffer == ((void*)0));

 cl_git_pass(git_filebuf_open(&file, test, 0, 0666));
 cl_assert(file.buffer != ((void*)0));
 cl_git_pass(git_filebuf_printf(&file, "%s\n", "libgit2 rocks"));
 cl_assert(file.buffer != ((void*)0));

 cl_git_pass(git_filebuf_commit(&file));
 cl_assert(file.buffer == ((void*)0));

 cl_must_pass(p_unlink(test));
}
