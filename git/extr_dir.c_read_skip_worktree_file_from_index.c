
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oid_stat {int dummy; } ;
struct index_state {TYPE_1__** cache; } ;
struct TYPE_2__ {int oid; } ;


 int ce_skip_worktree (TYPE_1__*) ;
 int do_read_blob (int *,struct oid_stat*,size_t*,char**) ;
 int index_name_pos (struct index_state const*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int read_skip_worktree_file_from_index(const struct index_state *istate,
           const char *path,
           size_t *size_out, char **data_out,
           struct oid_stat *oid_stat)
{
 int pos, len;

 len = strlen(path);
 pos = index_name_pos(istate, path, len);
 if (pos < 0)
  return -1;
 if (!ce_skip_worktree(istate->cache[pos]))
  return -1;

 return do_read_blob(&istate->cache[pos]->oid, oid_stat, size_out, data_out);
}
