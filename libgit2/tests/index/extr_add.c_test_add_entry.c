
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {char* path; scalar_t__ mode; int id; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
typedef scalar_t__ git_filemode_t ;


 scalar_t__ GIT_FILEMODE_TREE ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_index ;
 int git_index_add (int ,TYPE_2__*) ;
 int git_oid_fromstr (int *,char const*) ;

__attribute__((used)) static void test_add_entry(
 bool should_succeed, const char *idstr, git_filemode_t mode)
{
 git_index_entry entry = {{0}};

 cl_git_pass(git_oid_fromstr(&entry.id, idstr));

 entry.path = mode == GIT_FILEMODE_TREE ? "test_folder" : "test_file";
 entry.mode = mode;

 if (should_succeed)
  cl_git_pass(git_index_add(g_index, &entry));
 else
  cl_git_fail(git_index_add(g_index, &entry));
}
