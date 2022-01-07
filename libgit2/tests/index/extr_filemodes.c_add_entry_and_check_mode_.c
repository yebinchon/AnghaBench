
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int new_entry ;
struct TYPE_8__ {char* path; scalar_t__ mode; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;
typedef scalar_t__ git_filemode_t ;


 int clar__assert (int,char const*,int,char*,int *,int) ;
 int clar__assert_equal (char const*,int,char*,int,char*,unsigned int,unsigned int) ;
 int git_index_add (int *,TYPE_1__*) ;
 int git_index_add_from_buffer (int *,TYPE_1__*,char const*,int ) ;
 int git_index_find (size_t*,int *,char*) ;
 TYPE_1__* git_index_get_byindex (int *,size_t) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;
 int memset (TYPE_1__*,int,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void add_entry_and_check_mode_(
 git_index *index, bool from_file, git_filemode_t mode,
 const char *file, int line)
{
 size_t pos;
 const git_index_entry* entry;
 git_index_entry new_entry;




 if (from_file)
 {
  clar__assert(!git_index_find(&pos, index, "exec_off"),
   file, line, "Cannot find original index entry", ((void*)0), 1);

  entry = git_index_get_byindex(index, pos);

  memcpy(&new_entry, entry, sizeof(new_entry));
 }
 else
  memset(&new_entry, 0x0, sizeof(git_index_entry));

 new_entry.path = "filemodes/explicit_test";
 new_entry.mode = mode;

 if (from_file)
 {
  clar__assert(!git_index_add(index, &new_entry),
   file, line, "Cannot add index entry", ((void*)0), 1);
 }
 else
 {
  const char *content = "hey there\n";
  clar__assert(!git_index_add_from_buffer(index, &new_entry, content, strlen(content)),
   file, line, "Cannot add index entry from buffer", ((void*)0), 1);
 }

 clar__assert(!git_index_find(&pos, index, "filemodes/explicit_test"),
  file, line, "Cannot find new index entry", ((void*)0), 1);

 entry = git_index_get_byindex(index, pos);

 clar__assert_equal(file, line, "Expected mode does not match index",
  1, "%07o", (unsigned int)entry->mode, (unsigned int)mode);
}
