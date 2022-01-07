
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;


 int DISCOVER_FOLDER ;
 int REPOSITORY_ALTERNATE_FOLDER ;
 int REPOSITORY_ALTERNATE_FOLDER_SUB ;
 int REPOSITORY_ALTERNATE_FOLDER_SUB_SUB ;
 int REPOSITORY_ALTERNATE_FOLDER_SUB_SUB_SUB ;
 int SUB_REPOSITORY_FOLDER ;
 int SUB_REPOSITORY_GITDIR ;
 int append_ceiling_dir (TYPE_1__*,int ) ;
 TYPE_1__ ceiling_dirs ;
 int ensure_repository_discover (int ,int ,int ) ;

void test_repo_discover__ceiling_should_not_affect_gitdir_redirection(void)
{
 append_ceiling_dir(&ceiling_dirs, SUB_REPOSITORY_FOLDER);


 ensure_repository_discover(REPOSITORY_ALTERNATE_FOLDER, ceiling_dirs.ptr, SUB_REPOSITORY_GITDIR);
 ensure_repository_discover(REPOSITORY_ALTERNATE_FOLDER_SUB, ceiling_dirs.ptr, SUB_REPOSITORY_GITDIR);
 ensure_repository_discover(REPOSITORY_ALTERNATE_FOLDER_SUB_SUB, ceiling_dirs.ptr, SUB_REPOSITORY_GITDIR);
 ensure_repository_discover(REPOSITORY_ALTERNATE_FOLDER_SUB_SUB_SUB, ceiling_dirs.ptr, DISCOVER_FOLDER);
}
