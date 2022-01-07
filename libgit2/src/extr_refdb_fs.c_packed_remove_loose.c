
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct packref {int flags; int oid; int name; } ;
struct TYPE_13__ {int refcache; } ;
typedef TYPE_1__ refdb_fs_backend ;
typedef int git_oid ;
struct TYPE_14__ {int path_original; } ;
typedef TYPE_2__ git_filebuf ;
struct TYPE_15__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 int GIT_EEXISTS ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_REFERENCE ;
 TYPE_2__ GIT_FILEBUF_INIT ;
 int GIT_SYMREF ;
 int PACKREF_WAS_LOOSE ;
 int git__prefixcmp (int ,int ) ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_error_set (int ,char*,int ) ;
 int git_filebuf_cleanup (TYPE_2__*) ;
 int git_futils_readbuffer (TYPE_3__*,int ) ;
 int git_oid_equal (int *,int *) ;
 struct packref* git_sortedcache_entry (int ,size_t) ;
 size_t git_sortedcache_entrycount (int ) ;
 int loose_lock (TYPE_2__*,TYPE_1__*,int ) ;
 scalar_t__ loose_parse_oid (int *,int ,TYPE_3__*) ;
 int p_unlink (int ) ;

__attribute__((used)) static int packed_remove_loose(refdb_fs_backend *backend)
{
 size_t i;
 git_filebuf lock = GIT_FILEBUF_INIT;
 git_buf ref_content = GIT_BUF_INIT;
 int error = 0;



 for (i = 0; i < git_sortedcache_entrycount(backend->refcache); ++i) {
  struct packref *ref = git_sortedcache_entry(backend->refcache, i);
  git_oid current_id;

  if (!ref || !(ref->flags & PACKREF_WAS_LOOSE))
   continue;

  git_filebuf_cleanup(&lock);


  error = loose_lock(&lock, backend, ref->name);

  if (error == GIT_EEXISTS || error == GIT_ENOTFOUND)
   continue;

  if (error < 0) {
   git_buf_dispose(&ref_content);
   git_error_set(GIT_ERROR_REFERENCE, "failed to lock loose reference '%s'", ref->name);
   return error;
  }

  error = git_futils_readbuffer(&ref_content, lock.path_original);

  if (error == GIT_ENOTFOUND)
   continue;


  if (!git__prefixcmp(ref_content.ptr, GIT_SYMREF))
   continue;


  if (loose_parse_oid(&current_id, lock.path_original, &ref_content) < 0)
   continue;


  if (!git_oid_equal(&current_id, &ref->oid))
   continue;







  p_unlink(lock.path_original);
 }

 git_buf_dispose(&ref_content);
 git_filebuf_cleanup(&lock);
 return 0;
}
