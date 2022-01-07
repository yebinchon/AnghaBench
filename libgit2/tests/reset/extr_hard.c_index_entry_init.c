
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_5__ {char* path; int mode; int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int GIT_INDEX_ENTRY_STAGE_SET (TYPE_1__*,int) ;
 int cl_git_pass (int ) ;
 int git_index_add (int *,TYPE_1__*) ;
 int git_oid_cpy (int *,int *) ;
 int memset (TYPE_1__*,int,int) ;

__attribute__((used)) static void index_entry_init(git_index *index, int side, git_oid *oid)
{
 git_index_entry entry;

 memset(&entry, 0x0, sizeof(git_index_entry));

 entry.path = "conflicting_file";
 GIT_INDEX_ENTRY_STAGE_SET(&entry, side);
 entry.mode = 0100644;
 git_oid_cpy(&entry.id, oid);

 cl_git_pass(git_index_add(index, &entry));
}
