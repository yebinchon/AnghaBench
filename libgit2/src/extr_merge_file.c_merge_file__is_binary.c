
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; int ptr; } ;
typedef TYPE_1__ git_merge_file_input ;


 size_t GIT_MERGE_FILE_BINARY_SIZE ;
 size_t GIT_XDIFF_MAX_SIZE ;
 int * memchr (int ,int ,size_t) ;

__attribute__((used)) static bool merge_file__is_binary(const git_merge_file_input *file)
{
 size_t len = file ? file->size : 0;

 if (len > GIT_XDIFF_MAX_SIZE)
  return 1;
 if (len > GIT_MERGE_FILE_BINARY_SIZE)
  len = GIT_MERGE_FILE_BINARY_SIZE;

 return len ? (memchr(file->ptr, 0, len) != ((void*)0)) : 0;
}
