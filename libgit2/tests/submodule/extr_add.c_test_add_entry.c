
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {char const* path; int mode; int id; TYPE_1__ member_0; } ;
typedef TYPE_2__ git_index_entry ;
typedef int git_index ;
typedef int git_filemode_t ;


 int cl_git_pass (int ) ;
 int git_index_add (int *,TYPE_2__*) ;
 int git_oid_fromstr (int *,char const*) ;

__attribute__((used)) static void test_add_entry(
 git_index *index,
 const char *idstr,
 const char *path,
 git_filemode_t mode)
{
 git_index_entry entry = {{0}};

 cl_git_pass(git_oid_fromstr(&entry.id, idstr));

 entry.path = path;
 entry.mode = mode;

 cl_git_pass(git_index_add(index, &entry));
}
