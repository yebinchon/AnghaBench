
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; } ;


 int SUB_REPOSITORY_FOLDER_SUB ;
 int SUB_REPOSITORY_FOLDER_SUB_SUB ;
 int SUB_REPOSITORY_FOLDER_SUB_SUB_SUB ;
 int SUB_REPOSITORY_GITDIR ;
 TYPE_1__ ceiling_dirs ;
 int ensure_repository_discover (int ,int ,int ) ;

void test_repo_discover__discovering_repo_with_subdirectory_succeeds(void)
{
 ensure_repository_discover(SUB_REPOSITORY_FOLDER_SUB, ceiling_dirs.ptr, SUB_REPOSITORY_GITDIR);
 ensure_repository_discover(SUB_REPOSITORY_FOLDER_SUB_SUB, ceiling_dirs.ptr, SUB_REPOSITORY_GITDIR);
 ensure_repository_discover(SUB_REPOSITORY_FOLDER_SUB_SUB_SUB, ceiling_dirs.ptr, SUB_REPOSITORY_GITDIR);
}
