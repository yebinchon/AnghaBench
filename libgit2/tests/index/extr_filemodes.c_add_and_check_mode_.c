
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int cl_git_pass (int ) ;
 int clar__assert (int,char const*,int,char*,int *,int) ;
 int clar__assert_equal (char const*,int,char*,int,char*,unsigned int,unsigned int) ;
 int git_index_add_bypath (int *,char const*) ;
 int git_index_find (size_t*,int *,char const*) ;
 TYPE_1__* git_index_get_byindex (int *,size_t) ;

__attribute__((used)) static void add_and_check_mode_(
 git_index *index, const char *filename, unsigned int expect_mode,
 const char *file, int line)
{
 size_t pos;
 const git_index_entry *entry;

 cl_git_pass(git_index_add_bypath(index, filename));

 clar__assert(!git_index_find(&pos, index, filename),
  file, line, "Cannot find index entry", ((void*)0), 1);

 entry = git_index_get_byindex(index, pos);

 clar__assert_equal(file, line, "Expected mode does not match index",
  1, "%07o", (unsigned int)entry->mode, (unsigned int)expect_mode);
}
