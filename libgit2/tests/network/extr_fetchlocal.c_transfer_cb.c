
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_indexer_progress ;


 int GIT_UNUSED (int const*) ;

__attribute__((used)) static int transfer_cb(const git_indexer_progress *stats, void *payload)
{
 int *callcount = (int*)payload;
 GIT_UNUSED(stats);
 (*callcount)++;
 return 0;
}
