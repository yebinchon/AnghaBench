
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int size; struct pollfd* items; } ;
typedef TYPE_1__ uv__os390_epoll ;
struct pollfd {int fd; } ;


 int abort () ;
 unsigned int next_power_of_two (unsigned int) ;
 struct pollfd* uv__realloc (struct pollfd*,unsigned int) ;

__attribute__((used)) static void maybe_resize(uv__os390_epoll* lst, unsigned int len) {
  unsigned int newsize;
  unsigned int i;
  struct pollfd* newlst;
  struct pollfd event;

  if (len <= lst->size)
    return;

  if (lst->size == 0)
    event.fd = -1;
  else {

    event = lst->items[lst->size - 1];
    lst->items[lst->size - 1].fd = -1;
  }

  newsize = next_power_of_two(len);
  newlst = uv__realloc(lst->items, newsize * sizeof(lst->items[0]));

  if (newlst == ((void*)0))
    abort();
  for (i = lst->size; i < newsize; ++i)
    newlst[i].fd = -1;


  newlst[newsize - 1] = event;

  lst->items = newlst;
  lst->size = newsize;
}
