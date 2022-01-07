
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_sortedcache ;


 int GIT_ENOTFOUND ;
 int cl_assert (int ) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char*,void*) ;
 int cl_assert_equal_sz (int,size_t) ;
 int cl_git_pass (int ) ;
 int git_sortedcache_clear (int *,int) ;
 int * git_sortedcache_entry (int *,int) ;
 size_t git_sortedcache_entrycount (int *) ;
 int git_sortedcache_free (int *) ;
 int * git_sortedcache_lookup (int *,char*) ;
 int git_sortedcache_lookup_index (size_t*,int *,char*) ;
 int git_sortedcache_new (int **,int ,int *,int *,int ,int *) ;
 int git_sortedcache_upsert (void**,int *,char*) ;
 int git_sortedcache_wlock (int *) ;
 int git_sortedcache_wunlock (int *) ;
 int name_only_cmp ;

void test_core_sortedcache__name_only(void)
{
 git_sortedcache *sc;
 void *item;
 size_t pos;

 cl_git_pass(git_sortedcache_new(
  &sc, 0, ((void*)0), ((void*)0), name_only_cmp, ((void*)0)));

 cl_git_pass(git_sortedcache_wlock(sc));
 cl_git_pass(git_sortedcache_upsert(&item, sc, "aaa"));
 cl_git_pass(git_sortedcache_upsert(&item, sc, "bbb"));
 cl_git_pass(git_sortedcache_upsert(&item, sc, "zzz"));
 cl_git_pass(git_sortedcache_upsert(&item, sc, "mmm"));
 cl_git_pass(git_sortedcache_upsert(&item, sc, "iii"));
 git_sortedcache_wunlock(sc);

 cl_assert_equal_sz(5, git_sortedcache_entrycount(sc));

 cl_assert((item = git_sortedcache_lookup(sc, "aaa")) != ((void*)0));
 cl_assert_equal_s("aaa", item);
 cl_assert((item = git_sortedcache_lookup(sc, "mmm")) != ((void*)0));
 cl_assert_equal_s("mmm", item);
 cl_assert((item = git_sortedcache_lookup(sc, "zzz")) != ((void*)0));
 cl_assert_equal_s("zzz", item);
 cl_assert(git_sortedcache_lookup(sc, "qqq") == ((void*)0));

 cl_assert((item = git_sortedcache_entry(sc, 0)) != ((void*)0));
 cl_assert_equal_s("aaa", item);
 cl_assert((item = git_sortedcache_entry(sc, 1)) != ((void*)0));
 cl_assert_equal_s("bbb", item);
 cl_assert((item = git_sortedcache_entry(sc, 2)) != ((void*)0));
 cl_assert_equal_s("iii", item);
 cl_assert((item = git_sortedcache_entry(sc, 3)) != ((void*)0));
 cl_assert_equal_s("mmm", item);
 cl_assert((item = git_sortedcache_entry(sc, 4)) != ((void*)0));
 cl_assert_equal_s("zzz", item);
 cl_assert(git_sortedcache_entry(sc, 5) == ((void*)0));

 cl_git_pass(git_sortedcache_lookup_index(&pos, sc, "aaa"));
 cl_assert_equal_sz(0, pos);
 cl_git_pass(git_sortedcache_lookup_index(&pos, sc, "iii"));
 cl_assert_equal_sz(2, pos);
 cl_git_pass(git_sortedcache_lookup_index(&pos, sc, "zzz"));
 cl_assert_equal_sz(4, pos);
 cl_assert_equal_i(
  GIT_ENOTFOUND, git_sortedcache_lookup_index(&pos, sc, "abc"));

 git_sortedcache_clear(sc, 1);

 cl_assert_equal_sz(0, git_sortedcache_entrycount(sc));
 cl_assert(git_sortedcache_entry(sc, 0) == ((void*)0));
 cl_assert(git_sortedcache_lookup(sc, "aaa") == ((void*)0));
 cl_assert(git_sortedcache_entry(sc, 0) == ((void*)0));

 git_sortedcache_free(sc);
}
