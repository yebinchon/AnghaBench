
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ign_path; int depth; } ;
typedef TYPE_1__ git_ignores ;


 int GIT_IGNORE_FILE ;
 int push_ignore_file (TYPE_1__*,int *,char const*,int ) ;

__attribute__((used)) static int push_one_ignore(void *payload, const char *path)
{
 git_ignores *ign = payload;
 ign->depth++;
 return push_ignore_file(ign, &ign->ign_path, path, GIT_IGNORE_FILE);
}
