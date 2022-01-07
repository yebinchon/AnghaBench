
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int value; char smaller_value; } ;
typedef TYPE_1__ sortedcache_test_struct ;
typedef int git_sortedcache ;
struct TYPE_7__ {char* ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 scalar_t__ git__isspace (char) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_sortedcache_clear (int *,int) ;
 scalar_t__ git_sortedcache_lockandload (int *,TYPE_2__*) ;
 int git_sortedcache_upsert (void**,int *,char*) ;
 int git_sortedcache_wunlock (int *) ;
 int strtol (char*,char**,int ) ;

__attribute__((used)) static void sortedcache_test_reload(git_sortedcache *sc)
{
 int count = 0;
 git_buf buf = GIT_BUF_INIT;
 char *scan, *after;
 sortedcache_test_struct *item;

 cl_assert(git_sortedcache_lockandload(sc, &buf) > 0);

 git_sortedcache_clear(sc, 0);

 for (scan = buf.ptr; *scan; scan = after + 1) {
  int val = strtol(scan, &after, 0);
  cl_assert(after > scan);
  scan = after;

  for (scan = after; git__isspace(*scan); ++scan) ;
  for (after = scan; *after && *after != '\n'; ++after) ;
  *after = '\0';

  cl_git_pass(git_sortedcache_upsert((void **)&item, sc, scan));

  item->value = val;
  item->smaller_value = (char)(count++);
 }

 git_sortedcache_wunlock(sc);

 git_buf_dispose(&buf);
}
