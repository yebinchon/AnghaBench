
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* tree_entry; int parent_path; } ;
typedef TYPE_1__ tree_iterator_entry ;
typedef int git_buf ;
struct TYPE_5__ {int filename; } ;


 int git_buf_clear (int *) ;
 int git_buf_joinpath (int *,int ,int ) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_putc (int *,char) ;
 int git_buf_puts (int *,int ) ;
 scalar_t__ git_tree_entry__is_tree (TYPE_3__*) ;

__attribute__((used)) static int tree_iterator_compute_path(
 git_buf *out,
 tree_iterator_entry *entry)
{
 git_buf_clear(out);

 if (entry->parent_path)
  git_buf_joinpath(out, entry->parent_path, entry->tree_entry->filename);
 else
  git_buf_puts(out, entry->tree_entry->filename);

 if (git_tree_entry__is_tree(entry->tree_entry))
  git_buf_putc(out, '/');

 if (git_buf_oom(out))
  return -1;

 return 0;
}
