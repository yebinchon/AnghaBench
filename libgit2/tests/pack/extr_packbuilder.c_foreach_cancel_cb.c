
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_indexer ;
struct TYPE_3__ {int total_objects; } ;


 TYPE_1__ _stats ;
 int cl_git_pass (int ) ;
 int git_indexer_append (int *,void*,size_t,TYPE_1__*) ;

__attribute__((used)) static int foreach_cancel_cb(void *buf, size_t len, void *payload)
{
 git_indexer *idx = (git_indexer *)payload;
 cl_git_pass(git_indexer_append(idx, buf, len, &_stats));
 return (_stats.total_objects > 2) ? -1111 : 0;
}
