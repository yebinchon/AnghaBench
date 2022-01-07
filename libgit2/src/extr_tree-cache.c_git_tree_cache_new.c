
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t namelen; char* name; } ;
typedef TYPE_1__ git_tree_cache ;
typedef int git_pool ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD3 (size_t*,int,size_t,int) ;
 TYPE_1__* git_pool_malloc (int *,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int memset (TYPE_1__*,int,int) ;
 size_t strlen (char const*) ;

int git_tree_cache_new(git_tree_cache **out, const char *name, git_pool *pool)
{
 size_t name_len, alloc_size;
 git_tree_cache *tree;

 name_len = strlen(name);

 GIT_ERROR_CHECK_ALLOC_ADD3(&alloc_size, sizeof(git_tree_cache), name_len, 1);

 tree = git_pool_malloc(pool, alloc_size);
 GIT_ERROR_CHECK_ALLOC(tree);

 memset(tree, 0x0, sizeof(git_tree_cache));

 tree->namelen = name_len;
 memcpy(tree->name, name, name_len);
 tree->name[name_len] = '\0';

 *out = tree;
 return 0;
}
