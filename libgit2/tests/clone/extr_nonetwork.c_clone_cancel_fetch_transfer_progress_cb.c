
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_indexer_progress ;


 int GIT_UNUSED (void*) ;

__attribute__((used)) static int clone_cancel_fetch_transfer_progress_cb(
 const git_indexer_progress *stats, void *data)
{
 GIT_UNUSED(stats); GIT_UNUSED(data);
 return -54321;
}
