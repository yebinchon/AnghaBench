
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct submodule {int dummy; } ;
struct stream_filter {int dummy; } ;
struct strbuf {int dummy; } ;
struct stat {int dummy; } ;
struct delayed_checkout {int paths; int state; } ;
struct checkout {TYPE_1__* istate; scalar_t__ refresh_cache; int force; struct delayed_checkout* delayed_checkout; } ;
struct cache_entry {unsigned int ce_mode; char* name; int ce_flags; int oid; } ;
typedef int ssize_t ;
struct TYPE_7__ {int cache_changed; } ;


 int CE_ENTRY_CHANGED ;
 int CE_NO_DELAY ;
 int CE_RETRY ;
 int CE_UPDATE_IN_BASE ;
 struct strbuf STRBUF_INIT ;
 int SUBMODULE_MOVE_HEAD_FORCE ;


 unsigned int S_IFMT ;

 int assert (TYPE_1__*) ;
 int async_convert_to_working_tree (TYPE_1__*,char*,char*,unsigned long,struct strbuf*,struct delayed_checkout*) ;
 int close (int) ;
 int convert_to_working_tree (TYPE_1__*,char*,char*,unsigned long,struct strbuf*) ;
 int error (char*,char*,...) ;
 int error_errno (char*,char*) ;
 int fill_stat_cache_info (TYPE_1__*,struct cache_entry*,struct stat*) ;
 int free (char*) ;
 int fstat_output (int,struct checkout const*,struct stat*) ;
 struct stream_filter* get_stream_filter (TYPE_1__*,char*,int *) ;
 int has_symlinks ;
 scalar_t__ lstat (char*,struct stat*) ;
 int mark_fsmonitor_invalid (TYPE_1__*,struct cache_entry*) ;
 int mkdir (char*,int) ;
 char* oid_to_hex (int *) ;
 int open_output_fd (char*,struct cache_entry*,int) ;
 char* read_blob_entry (struct cache_entry*,unsigned long*) ;
 char* strbuf_detach (struct strbuf*,size_t*) ;
 int streaming_write_entry (struct cache_entry*,char*,struct stream_filter*,struct checkout const*,int,int*,struct stat*) ;
 int string_list_has_string (int *,char*) ;
 struct submodule* submodule_from_ce (struct cache_entry*) ;
 int submodule_move_head (char*,int *,char*,int ) ;
 int symlink (char*,char*) ;
 int write_in_full (int,char*,unsigned long) ;

__attribute__((used)) static int write_entry(struct cache_entry *ce,
         char *path, const struct checkout *state, int to_tempfile)
{
 unsigned int ce_mode_s_ifmt = ce->ce_mode & S_IFMT;
 struct delayed_checkout *dco = state->delayed_checkout;
 int fd, ret, fstat_done = 0;
 char *new_blob;
 struct strbuf buf = STRBUF_INIT;
 unsigned long size;
 ssize_t wrote;
 size_t newsize = 0;
 struct stat st;
 const struct submodule *sub;

 if (ce_mode_s_ifmt == 128) {
  struct stream_filter *filter = get_stream_filter(state->istate, ce->name,
         &ce->oid);
  if (filter &&
      !streaming_write_entry(ce, path, filter,
        state, to_tempfile,
        &fstat_done, &st))
   goto finish;
 }

 switch (ce_mode_s_ifmt) {
 case 129:
  new_blob = read_blob_entry(ce, &size);
  if (!new_blob)
   return error("unable to read sha1 file of %s (%s)",
         path, oid_to_hex(&ce->oid));





  if (!has_symlinks || to_tempfile)
   goto write_file_entry;

  ret = symlink(new_blob, path);
  free(new_blob);
  if (ret)
   return error_errno("unable to create symlink %s", path);
  break;

 case 128:




  if (dco && dco->state == CE_RETRY) {
   new_blob = ((void*)0);
   size = 0;
  } else {
   new_blob = read_blob_entry(ce, &size);
   if (!new_blob)
    return error("unable to read sha1 file of %s (%s)",
          path, oid_to_hex(&ce->oid));
  }




  if (dco && dco->state != CE_NO_DELAY) {
   ret = async_convert_to_working_tree(state->istate, ce->name, new_blob,
           size, &buf, dco);
   if (ret && string_list_has_string(&dco->paths, ce->name)) {
    free(new_blob);
    goto delayed;
   }
  } else
   ret = convert_to_working_tree(state->istate, ce->name, new_blob, size, &buf);

  if (ret) {
   free(new_blob);
   new_blob = strbuf_detach(&buf, &newsize);
   size = newsize;
  }






 write_file_entry:
  fd = open_output_fd(path, ce, to_tempfile);
  if (fd < 0) {
   free(new_blob);
   return error_errno("unable to create file %s", path);
  }

  wrote = write_in_full(fd, new_blob, size);
  if (!to_tempfile)
   fstat_done = fstat_output(fd, state, &st);
  close(fd);
  free(new_blob);
  if (wrote < 0)
   return error("unable to write file %s", path);
  break;

 case 130:
  if (to_tempfile)
   return error("cannot create temporary submodule %s", path);
  if (mkdir(path, 0777) < 0)
   return error("cannot create submodule directory %s", path);
  sub = submodule_from_ce(ce);
  if (sub)
   return submodule_move_head(ce->name,
    ((void*)0), oid_to_hex(&ce->oid),
    state->force ? SUBMODULE_MOVE_HEAD_FORCE : 0);
  break;

 default:
  return error("unknown file mode for %s in index", path);
 }

finish:
 if (state->refresh_cache) {
  assert(state->istate);
  if (!fstat_done)
   if (lstat(ce->name, &st) < 0)
    return error_errno("unable to stat just-written file %s",
         ce->name);
  fill_stat_cache_info(state->istate, ce, &st);
  ce->ce_flags |= CE_UPDATE_IN_BASE;
  mark_fsmonitor_invalid(state->istate, ce);
  state->istate->cache_changed |= CE_ENTRY_CHANGED;
 }
delayed:
 return 0;
}
