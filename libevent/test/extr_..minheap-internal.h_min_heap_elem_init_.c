
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min_heap_idx; } ;
struct event {TYPE_1__ ev_timeout_pos; } ;


 int EV_SIZE_MAX ;

void min_heap_elem_init_(struct event* e) { e->ev_timeout_pos.min_heap_idx = EV_SIZE_MAX; }
