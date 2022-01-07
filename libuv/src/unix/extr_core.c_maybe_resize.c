
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int nwatchers; int ** watchers; } ;
typedef TYPE_1__ uv_loop_t ;
typedef int uv__io_t ;


 int abort () ;
 int next_power_of_two (unsigned int) ;
 int ** uv__realloc (int **,unsigned int) ;

__attribute__((used)) static void maybe_resize(uv_loop_t* loop, unsigned int len) {
  uv__io_t** watchers;
  void* fake_watcher_list;
  void* fake_watcher_count;
  unsigned int nwatchers;
  unsigned int i;

  if (len <= loop->nwatchers)
    return;


  if (loop->watchers != ((void*)0)) {
    fake_watcher_list = loop->watchers[loop->nwatchers];
    fake_watcher_count = loop->watchers[loop->nwatchers + 1];
  } else {
    fake_watcher_list = ((void*)0);
    fake_watcher_count = ((void*)0);
  }

  nwatchers = next_power_of_two(len + 2) - 2;
  watchers = uv__realloc(loop->watchers,
                         (nwatchers + 2) * sizeof(loop->watchers[0]));

  if (watchers == ((void*)0))
    abort();
  for (i = loop->nwatchers; i < nwatchers; i++)
    watchers[i] = ((void*)0);
  watchers[nwatchers] = fake_watcher_list;
  watchers[nwatchers + 1] = fake_watcher_count;

  loop->watchers = watchers;
  loop->nwatchers = nwatchers;
}
