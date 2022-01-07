
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int data ;
 int event ;
 size_t offsetof (int ,int ) ;

inline size_t get_event_size_d (int data_len) {
  return data_len + offsetof (event, data);
}
