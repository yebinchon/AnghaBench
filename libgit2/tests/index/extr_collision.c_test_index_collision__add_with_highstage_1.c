
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int seconds; } ;
struct TYPE_7__ {int seconds; } ;
struct TYPE_9__ {int mode; char* path; scalar_t__ flags; int id; scalar_t__ file_size; TYPE_2__ mtime; TYPE_1__ ctime; } ;
typedef TYPE_3__ git_index_entry ;
typedef int entry ;


 int GIT_INDEX_ENTRY_STAGE_SET (TYPE_3__*,int) ;
 int cl_git_pass (int ) ;
 int g_empty_id ;
 int g_index ;
 int git_index_add (int ,TYPE_3__*) ;
 int git_oid_cpy (int *,int *) ;
 int memset (TYPE_3__*,int ,int) ;

void test_index_collision__add_with_highstage_1(void)
{
 git_index_entry entry;

 memset(&entry, 0, sizeof(entry));
 entry.ctime.seconds = 12346789;
 entry.mtime.seconds = 12346789;
 entry.mode = 0100644;
 entry.file_size = 0;
 git_oid_cpy(&entry.id, &g_empty_id);

 entry.path = "a/b";
 GIT_INDEX_ENTRY_STAGE_SET(&entry, 2);
 cl_git_pass(git_index_add(g_index, &entry));


 entry.path = "a/b/c";
 entry.flags = 0;
 cl_git_pass(git_index_add(g_index, &entry));


 entry.path = "a/b";
 GIT_INDEX_ENTRY_STAGE_SET(&entry, 1);
 cl_git_pass(git_index_add(g_index, &entry));
}
