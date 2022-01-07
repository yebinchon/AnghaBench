
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct git_pack_file {int index_version; char* pack_name; int lock; } ;
struct TYPE_7__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int assert (int) ;
 int git_buf_dispose (TYPE_1__*) ;
 scalar_t__ git_buf_init (TYPE_1__*,size_t) ;
 scalar_t__ git_buf_oom (TYPE_1__*) ;
 int git_buf_put (TYPE_1__*,char*,size_t) ;
 int git_buf_puts (TYPE_1__*,char*) ;
 int git_mutex_lock (int *) ;
 int git_mutex_unlock (int *) ;
 int pack_index_check (int ,struct git_pack_file*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int pack_index_open(struct git_pack_file *p)
{
 int error = 0;
 size_t name_len;
 git_buf idx_name;

 if (p->index_version > -1)
  return 0;

 name_len = strlen(p->pack_name);
 assert(name_len > strlen(".pack"));

 if (git_buf_init(&idx_name, name_len) < 0)
  return -1;

 git_buf_put(&idx_name, p->pack_name, name_len - strlen(".pack"));
 git_buf_puts(&idx_name, ".idx");
 if (git_buf_oom(&idx_name)) {
  git_buf_dispose(&idx_name);
  return -1;
 }

 if ((error = git_mutex_lock(&p->lock)) < 0) {
  git_buf_dispose(&idx_name);
  return error;
 }

 if (p->index_version == -1)
  error = pack_index_check(idx_name.ptr, p);

 git_buf_dispose(&idx_name);

 git_mutex_unlock(&p->lock);

 return error;
}
