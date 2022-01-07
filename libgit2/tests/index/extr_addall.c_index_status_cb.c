
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conflicts; int ignores; int wt_mods; int wt_dels; int wt_adds; int index_mods; int index_dels; int index_adds; } ;
typedef TYPE_1__ index_status_counts ;


 unsigned int GIT_STATUS_CONFLICTED ;
 unsigned int GIT_STATUS_IGNORED ;
 unsigned int GIT_STATUS_INDEX_DELETED ;
 unsigned int GIT_STATUS_INDEX_MODIFIED ;
 unsigned int GIT_STATUS_INDEX_NEW ;
 unsigned int GIT_STATUS_INDEX_TYPECHANGE ;
 unsigned int GIT_STATUS_WT_DELETED ;
 unsigned int GIT_STATUS_WT_MODIFIED ;
 unsigned int GIT_STATUS_WT_NEW ;
 unsigned int GIT_STATUS_WT_TYPECHANGE ;
 int GIT_UNUSED (char const*) ;

__attribute__((used)) static int index_status_cb(
 const char *path, unsigned int status_flags, void *payload)
{
 index_status_counts *vals = payload;



 GIT_UNUSED(path);

 if (status_flags & GIT_STATUS_INDEX_NEW)
  vals->index_adds++;
 if (status_flags & GIT_STATUS_INDEX_MODIFIED)
  vals->index_mods++;
 if (status_flags & GIT_STATUS_INDEX_DELETED)
  vals->index_dels++;
 if (status_flags & GIT_STATUS_INDEX_TYPECHANGE)
  vals->index_mods++;

 if (status_flags & GIT_STATUS_WT_NEW)
  vals->wt_adds++;
 if (status_flags & GIT_STATUS_WT_MODIFIED)
  vals->wt_mods++;
 if (status_flags & GIT_STATUS_WT_DELETED)
  vals->wt_dels++;
 if (status_flags & GIT_STATUS_WT_TYPECHANGE)
  vals->wt_mods++;

 if (status_flags & GIT_STATUS_IGNORED)
  vals->ignores++;
 if (status_flags & GIT_STATUS_CONFLICTED)
  vals->conflicts++;

 return 0;
}
