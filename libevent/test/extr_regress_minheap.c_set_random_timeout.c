
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int min_heap_idx; } ;
struct TYPE_3__ {int tv_sec; int tv_usec; } ;
struct event {TYPE_2__ ev_timeout_pos; TYPE_1__ ev_timeout; } ;


 int test_weakrand () ;

__attribute__((used)) static void
set_random_timeout(struct event *ev)
{
 ev->ev_timeout.tv_sec = test_weakrand();
 ev->ev_timeout.tv_usec = test_weakrand() & 0xfffff;
 ev->ev_timeout_pos.min_heap_idx = -1;
}
