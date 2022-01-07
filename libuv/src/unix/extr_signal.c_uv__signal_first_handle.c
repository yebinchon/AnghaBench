
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int signum; int * loop; scalar_t__ flags; } ;
typedef TYPE_1__ uv_signal_t ;


 TYPE_1__* RB_NFIND (int ,int *,TYPE_1__*) ;
 int uv__signal_tree ;
 int uv__signal_tree_s ;

__attribute__((used)) static uv_signal_t* uv__signal_first_handle(int signum) {

  uv_signal_t lookup;
  uv_signal_t* handle;

  lookup.signum = signum;
  lookup.flags = 0;
  lookup.loop = ((void*)0);

  handle = RB_NFIND(uv__signal_tree_s, &uv__signal_tree, &lookup);

  if (handle != ((void*)0) && handle->signum == signum)
    return handle;

  return ((void*)0);
}
