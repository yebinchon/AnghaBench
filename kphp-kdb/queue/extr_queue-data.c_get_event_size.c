
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data_len; } ;
typedef TYPE_1__ event ;


 size_t get_event_size_d (int ) ;

inline size_t get_event_size (event *e) {
  return get_event_size_d (e->data_len);
}
