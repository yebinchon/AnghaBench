
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int root; } ;
typedef TYPE_1__ IjkCacheTreeInfo ;


 int enu_free ;
 int free (TYPE_1__*) ;
 int ijk_av_tree_destroy (int ) ;
 int ijk_av_tree_enumerate (int ,int *,int *,int ) ;

__attribute__((used)) static int tree_destroy(void *parm, int64_t key, void *elem)
{
    IjkCacheTreeInfo *info = elem;
    ijk_av_tree_enumerate(info->root, ((void*)0), ((void*)0), enu_free);
    ijk_av_tree_destroy(info->root);
    free(info);
    return 0;
}
