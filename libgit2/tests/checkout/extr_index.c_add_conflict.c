
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mode; char const* path; int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int GIT_INDEX_ENTRY_STAGE_SET (TYPE_1__*,int) ;
 int cl_git_pass (int ) ;
 int git_index_add (int *,TYPE_1__*) ;
 int git_oid_fromstr (int *,char*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void add_conflict(git_index *index, const char *path)
{
 git_index_entry entry;

 memset(&entry, 0, sizeof(git_index_entry));

 entry.mode = 0100644;
 entry.path = path;

 git_oid_fromstr(&entry.id, "d427e0b2e138501a3d15cc376077a3631e15bd46");
 GIT_INDEX_ENTRY_STAGE_SET(&entry, 1);
 cl_git_pass(git_index_add(index, &entry));

 git_oid_fromstr(&entry.id, "4e886e602529caa9ab11d71f86634bd1b6e0de10");
 GIT_INDEX_ENTRY_STAGE_SET(&entry, 2);
 cl_git_pass(git_index_add(index, &entry));

 git_oid_fromstr(&entry.id, "2bd0a343aeef7a2cf0d158478966a6e587ff3863");
 GIT_INDEX_ENTRY_STAGE_SET(&entry, 3);
 cl_git_pass(git_index_add(index, &entry));
}
