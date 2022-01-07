
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;
struct cache_entry {int oid; int name; } ;


 int OBJ_BLOB ;
 int O_RDONLY ;
 int git_open_cloexec (int ,int ) ;
 int index_fd (struct index_state*,struct object_id*,int,struct stat*,int ,int ,int ) ;
 int oideq (struct object_id*,int *) ;

__attribute__((used)) static int ce_compare_data(struct index_state *istate,
      const struct cache_entry *ce,
      struct stat *st)
{
 int match = -1;
 int fd = git_open_cloexec(ce->name, O_RDONLY);

 if (fd >= 0) {
  struct object_id oid;
  if (!index_fd(istate, &oid, fd, st, OBJ_BLOB, ce->name, 0))
   match = !oideq(&oid, &ce->oid);

 }
 return match;
}
