
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct packref {int dummy; } ;
struct TYPE_5__ {scalar_t__ fsync; int * refcache; } ;
typedef TYPE_1__ refdb_fs_backend ;
typedef int git_sortedcache ;
typedef int git_filebuf ;


 int GIT_FILEBUF_FSYNC ;
 int GIT_FILEBUF_INIT ;
 int GIT_PACKEDREFS_FILE_MODE ;
 int GIT_PACKEDREFS_HEADER ;
 int assert (struct packref*) ;
 int git_filebuf_cleanup (int *) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,int ,int,int ) ;
 int git_filebuf_printf (int *,char*,int ) ;
 struct packref* git_sortedcache_entry (int *,size_t) ;
 size_t git_sortedcache_entrycount (int *) ;
 int git_sortedcache_path (int *) ;
 int git_sortedcache_updated (int *) ;
 int git_sortedcache_wlock (int *) ;
 int git_sortedcache_wunlock (int *) ;
 int packed_find_peel (TYPE_1__*,struct packref*) ;
 int packed_remove_loose (TYPE_1__*) ;
 int packed_write_ref (struct packref*,int *) ;

__attribute__((used)) static int packed_write(refdb_fs_backend *backend)
{
 git_sortedcache *refcache = backend->refcache;
 git_filebuf pack_file = GIT_FILEBUF_INIT;
 int error, open_flags = 0;
 size_t i;


 if ((error = git_sortedcache_wlock(refcache)) < 0)
  return error;

 if (backend->fsync)
  open_flags = GIT_FILEBUF_FSYNC;


 if ((error = git_filebuf_open(&pack_file, git_sortedcache_path(refcache), open_flags, GIT_PACKEDREFS_FILE_MODE)) < 0)
  goto fail;




 if ((error = git_filebuf_printf(&pack_file, "%s\n", GIT_PACKEDREFS_HEADER)) < 0)
  goto fail;

 for (i = 0; i < git_sortedcache_entrycount(refcache); ++i) {
  struct packref *ref = git_sortedcache_entry(refcache, i);
  assert(ref);

  if ((error = packed_find_peel(backend, ref)) < 0)
   goto fail;

  if ((error = packed_write_ref(ref, &pack_file)) < 0)
   goto fail;
 }



 if ((error = git_filebuf_commit(&pack_file)) < 0)
  goto fail;



 if ((error = packed_remove_loose(backend)) < 0)
  goto fail;

 git_sortedcache_updated(refcache);
 git_sortedcache_wunlock(refcache);


 return 0;

fail:
 git_filebuf_cleanup(&pack_file);
 git_sortedcache_wunlock(refcache);

 return error;
}
