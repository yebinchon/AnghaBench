
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct packref {char* name; int flags; int peel; int oid; } ;
struct TYPE_7__ {scalar_t__ peeling_mode; int refcache; int gitpath; } ;
typedef TYPE_1__ refdb_fs_backend ;
typedef int git_oid ;
struct TYPE_8__ {int size; scalar_t__ ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_REFERENCE ;
 scalar_t__ GIT_OID_HEXSZ ;
 char const* GIT_REFS_TAGS_DIR ;
 int PACKREF_CANNOT_PEEL ;
 int PACKREF_HAS_PEEL ;
 scalar_t__ PEELING_FULL ;
 scalar_t__ PEELING_NONE ;
 scalar_t__ PEELING_STANDARD ;
 scalar_t__ git__prefixcmp (char*,char const*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_error_clear () ;
 int git_error_set (int ,char*) ;
 int git_oid_cpy (int *,int *) ;
 scalar_t__ git_oid_fromstr (int *,char*) ;
 int git_sortedcache_clear (int ,int) ;
 int git_sortedcache_lockandload (int ,TYPE_2__*) ;
 scalar_t__ git_sortedcache_upsert (void**,int ,char*) ;
 int git_sortedcache_wunlock (int ) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;
 int * strstr (char*,char*) ;

__attribute__((used)) static int packed_reload(refdb_fs_backend *backend)
{
 int error;
 git_buf packedrefs = GIT_BUF_INIT;
 char *scan, *eof, *eol;

 if (!backend->gitpath)
  return 0;

 error = git_sortedcache_lockandload(backend->refcache, &packedrefs);







 if (error <= 0) {
  if (error == GIT_ENOTFOUND) {
   git_sortedcache_clear(backend->refcache, 1);
   git_error_clear();
   error = 0;
  }
  return error;
 }



 git_sortedcache_clear(backend->refcache, 0);

 scan = (char *)packedrefs.ptr;
 eof = scan + packedrefs.size;

 backend->peeling_mode = PEELING_NONE;

 if (*scan == '#') {
  static const char *traits_header = "# pack-refs with: ";

  if (git__prefixcmp(scan, traits_header) == 0) {
   scan += strlen(traits_header);
   eol = strchr(scan, '\n');

   if (!eol)
    goto parse_failed;
   *eol = '\0';

   if (strstr(scan, " fully-peeled ") != ((void*)0)) {
    backend->peeling_mode = PEELING_FULL;
   } else if (strstr(scan, " peeled ") != ((void*)0)) {
    backend->peeling_mode = PEELING_STANDARD;
   }

   scan = eol + 1;
  }
 }

 while (scan < eof && *scan == '#') {
  if (!(eol = strchr(scan, '\n')))
   goto parse_failed;
  scan = eol + 1;
 }

 while (scan < eof) {
  struct packref *ref;
  git_oid oid;



  if (git_oid_fromstr(&oid, scan) < 0)
   goto parse_failed;
  scan += GIT_OID_HEXSZ;

  if (*scan++ != ' ')
   goto parse_failed;
  if (!(eol = strchr(scan, '\n')))
   goto parse_failed;
  *eol = '\0';
  if (eol[-1] == '\r')
   eol[-1] = '\0';

  if (git_sortedcache_upsert((void **)&ref, backend->refcache, scan) < 0)
   goto parse_failed;
  scan = eol + 1;

  git_oid_cpy(&ref->oid, &oid);



  if (*scan == '^') {
   if (git_oid_fromstr(&oid, scan + 1) < 0)
    goto parse_failed;
   scan += GIT_OID_HEXSZ + 1;

   if (scan < eof) {
    if (!(eol = strchr(scan, '\n')))
     goto parse_failed;
    scan = eol + 1;
   }

   git_oid_cpy(&ref->peel, &oid);
   ref->flags |= PACKREF_HAS_PEEL;
  }
  else if (backend->peeling_mode == PEELING_FULL ||
    (backend->peeling_mode == PEELING_STANDARD &&
     git__prefixcmp(ref->name, GIT_REFS_TAGS_DIR) == 0))
   ref->flags |= PACKREF_CANNOT_PEEL;
 }

 git_sortedcache_wunlock(backend->refcache);
 git_buf_dispose(&packedrefs);

 return 0;

parse_failed:
 git_error_set(GIT_ERROR_REFERENCE, "corrupted packed references file");

 git_sortedcache_clear(backend->refcache, 0);
 git_sortedcache_wunlock(backend->refcache);
 git_buf_dispose(&packedrefs);

 return -1;
}
