
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int size; } ;
struct TYPE_10__ {int repo; } ;
struct TYPE_11__ {char* buffer; TYPE_1__ cached; TYPE_2__ object; } ;
typedef TYPE_3__ git_odb_object ;
typedef TYPE_3__ git_commit ;


 int g_repo ;
 scalar_t__ git__malloc (int) ;
 int git_commit__parse (TYPE_3__*,TYPE_3__*) ;
 int memset (TYPE_3__*,int,int) ;
 int strlen (char*) ;

__attribute__((used)) static int parse_commit(git_commit **out, const char *buffer)
{
 git_commit *commit;
 git_odb_object fake_odb_object;
 int error;

 commit = (git_commit*)git__malloc(sizeof(git_commit));
 memset(commit, 0x0, sizeof(git_commit));
 commit->object.repo = g_repo;

 memset(&fake_odb_object, 0x0, sizeof(git_odb_object));
 fake_odb_object.buffer = (char *)buffer;
 fake_odb_object.cached.size = strlen(fake_odb_object.buffer);

 error = git_commit__parse(commit, &fake_odb_object);

 *out = commit;
 return error;
}
