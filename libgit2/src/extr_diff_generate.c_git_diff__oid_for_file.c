
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int git_oid ;
typedef scalar_t__ git_off_t ;
struct TYPE_4__ {char* path; scalar_t__ file_size; int mode; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_diff ;
typedef int entry ;


 int GIT_ERROR_NOMEMORY ;
 scalar_t__ UINT32_MAX ;
 int git_diff__oid_for_entry (int *,int *,TYPE_1__*,int ,int *) ;
 int git_error_set (int ,char*,char const*) ;
 int memset (TYPE_1__*,int ,int) ;

int git_diff__oid_for_file(
 git_oid *out,
 git_diff *diff,
 const char *path,
 uint16_t mode,
 git_off_t size)
{
 git_index_entry entry;

 if (size < 0 || size > UINT32_MAX) {
  git_error_set(GIT_ERROR_NOMEMORY, "file size overflow (for 32-bits) on '%s'", path);
  return -1;
 }

 memset(&entry, 0, sizeof(entry));
 entry.mode = mode;
 entry.file_size = (uint32_t)size;
 entry.path = (char *)path;

 return git_diff__oid_for_entry(out, diff, &entry, mode, ((void*)0));
}
