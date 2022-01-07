
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int count; char** strings; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_remote ;
struct TYPE_11__ {int download_tags; } ;
typedef TYPE_2__ git_fetch_options ;
struct TYPE_12__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 TYPE_2__ GIT_FETCH_OPTIONS_INIT ;
 int GIT_REMOTE_DOWNLOAD_TAGS_AUTO ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_futils_readbuffer (TYPE_3__*,char*) ;
 int git_remote_fetch (int *,TYPE_1__*,TYPE_2__*,int *) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int ,char*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static void fetchhead_test_fetch(const char *fetchspec, const char *expected_fetchhead)
{
 git_remote *remote;
 git_fetch_options fetch_opts = GIT_FETCH_OPTIONS_INIT;
 git_buf fetchhead_buf = GIT_BUF_INIT;
 int equals = 0;
 git_strarray array, *active_refs = ((void*)0);

 cl_git_pass(git_remote_lookup(&remote, g_repo, "origin"));
 fetch_opts.download_tags = GIT_REMOTE_DOWNLOAD_TAGS_AUTO;

 if(fetchspec != ((void*)0)) {
  array.count = 1;
  array.strings = (char **) &fetchspec;
  active_refs = &array;
 }

 cl_git_pass(git_remote_fetch(remote, active_refs, &fetch_opts, ((void*)0)));
 git_remote_free(remote);

 cl_git_pass(git_futils_readbuffer(&fetchhead_buf, "./foo/.git/FETCH_HEAD"));

 equals = (strcmp(fetchhead_buf.ptr, expected_fetchhead) == 0);

 git_buf_dispose(&fetchhead_buf);

 cl_assert(equals);
}
