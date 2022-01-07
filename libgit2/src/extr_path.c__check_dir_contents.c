
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* ptr; } ;
typedef TYPE_1__ git_buf ;


 scalar_t__ GIT_ADD_SIZET_OVERFLOW (size_t*,size_t,int) ;
 scalar_t__ git_buf_joinpath (TYPE_1__*,char const*,char const*) ;
 size_t git_buf_len (TYPE_1__*) ;
 int git_buf_truncate (TYPE_1__*,size_t) ;
 scalar_t__ git_buf_try_grow (TYPE_1__*,size_t,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool _check_dir_contents(
 git_buf *dir,
 const char *sub,
 bool (*predicate)(const char *))
{
 bool result;
 size_t dir_size = git_buf_len(dir);
 size_t sub_size = strlen(sub);
 size_t alloc_size;


 if (GIT_ADD_SIZET_OVERFLOW(&alloc_size, dir_size, sub_size) ||
  GIT_ADD_SIZET_OVERFLOW(&alloc_size, alloc_size, 2) ||
  git_buf_try_grow(dir, alloc_size, 0) < 0)
  return 0;


 if (git_buf_joinpath(dir, dir->ptr, sub) < 0)
  return 0;

 result = predicate(dir->ptr);


 git_buf_truncate(dir, dir_size);
 return result;
}
