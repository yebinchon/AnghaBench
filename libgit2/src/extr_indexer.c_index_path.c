
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int hash; } ;
typedef TYPE_1__ git_indexer ;
struct TYPE_11__ {char* ptr; int size; } ;
typedef TYPE_2__ git_buf ;


 scalar_t__ GIT_OID_HEXSZ ;
 scalar_t__ git_buf_grow (TYPE_2__*,scalar_t__) ;
 int git_buf_len (TYPE_2__*) ;
 scalar_t__ git_buf_oom (TYPE_2__*) ;
 int git_buf_puts (TYPE_2__*,char const*) ;
 int git_buf_truncate (TYPE_2__*,size_t) ;
 int git_oid_fmt (char*,int *) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int index_path(git_buf *path, git_indexer *idx, const char *suffix)
{
 const char prefix[] = "pack-";
 size_t slash = (size_t)path->size;


 while (slash > 0 && path->ptr[slash - 1] != '/')
  slash--;

 if (git_buf_grow(path, slash + 1 + strlen(prefix) +
      GIT_OID_HEXSZ + strlen(suffix) + 1) < 0)
  return -1;

 git_buf_truncate(path, slash);
 git_buf_puts(path, prefix);
 git_oid_fmt(path->ptr + git_buf_len(path), &idx->hash);
 path->size += GIT_OID_HEXSZ;
 git_buf_puts(path, suffix);

 return git_buf_oom(path) ? -1 : 0;
}
