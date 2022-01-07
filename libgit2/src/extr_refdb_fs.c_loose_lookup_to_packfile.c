
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct packref {int flags; int oid; } ;
struct TYPE_3__ {int refcache; int gitpath; } ;
typedef TYPE_1__ refdb_fs_backend ;
typedef int git_oid ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_SYMREF ;
 int PACKREF_WAS_LOOSE ;
 int git__prefixcmp (int ,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_error_clear () ;
 int git_oid_cpy (int *,int *) ;
 int git_sortedcache_upsert (void**,int ,char const*) ;
 int git_sortedcache_wlock (int ) ;
 int git_sortedcache_wunlock (int ) ;
 int loose_parse_oid (int *,char const*,int *) ;
 scalar_t__ loose_readbuffer (int *,int ,char const*) ;

__attribute__((used)) static int loose_lookup_to_packfile(refdb_fs_backend *backend, const char *name)
{
 int error = 0;
 git_buf ref_file = GIT_BUF_INIT;
 struct packref *ref = ((void*)0);
 git_oid oid;




 if (loose_readbuffer(&ref_file, backend->gitpath, name) < 0) {
  git_error_clear();
  goto done;
 }


 if (!git__prefixcmp(git_buf_cstr(&ref_file), GIT_SYMREF))
  goto done;


 if ((error = loose_parse_oid(&oid, name, &ref_file)) < 0)
  goto done;

 git_sortedcache_wlock(backend->refcache);

 if (!(error = git_sortedcache_upsert(
   (void **)&ref, backend->refcache, name))) {

  git_oid_cpy(&ref->oid, &oid);
  ref->flags = PACKREF_WAS_LOOSE;
 }

 git_sortedcache_wunlock(backend->refcache);

done:
 git_buf_dispose(&ref_file);
 return error;
}
