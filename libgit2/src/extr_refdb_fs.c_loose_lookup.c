
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* gitpath; char* commonpath; } ;
typedef TYPE_1__ refdb_fs_backend ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_SYMREF ;
 scalar_t__ git__prefixcmp (int ,int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_buf_rtrim (int *) ;
 int * git_reference__alloc (char const*,int *,int *) ;
 int * git_reference__alloc_symbolic (char const*,char const*) ;
 scalar_t__ is_per_worktree_ref (char const*) ;
 int loose_parse_oid (int *,char const*,int *) ;
 char* loose_parse_symbolic (int *) ;
 int loose_readbuffer (int *,char const*,char const*) ;

__attribute__((used)) static int loose_lookup(
 git_reference **out,
 refdb_fs_backend *backend,
 const char *ref_name)
{
 git_buf ref_file = GIT_BUF_INIT;
 int error = 0;
 const char *ref_dir;

 if (out)
  *out = ((void*)0);

 if (is_per_worktree_ref(ref_name))
  ref_dir = backend->gitpath;
 else
  ref_dir = backend->commonpath;

 if ((error = loose_readbuffer(&ref_file, ref_dir, ref_name)) < 0)
                                        ;
 else if (git__prefixcmp(git_buf_cstr(&ref_file), GIT_SYMREF) == 0) {
  const char *target;

  git_buf_rtrim(&ref_file);

  if (!(target = loose_parse_symbolic(&ref_file)))
   error = -1;
  else if (out != ((void*)0))
   *out = git_reference__alloc_symbolic(ref_name, target);
 } else {
  git_oid oid;

  if (!(error = loose_parse_oid(&oid, ref_name, &ref_file)) &&
   out != ((void*)0))
   *out = git_reference__alloc(ref_name, &oid, ((void*)0));
 }

 git_buf_dispose(&ref_file);
 return error;
}
