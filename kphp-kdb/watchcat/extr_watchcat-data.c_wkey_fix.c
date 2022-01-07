
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * next_time; } ;
typedef TYPE_1__ wkey ;


 int add_entry_time (TYPE_1__*,int) ;
 int del_entry_time (TYPE_1__*) ;

inline void wkey_fix (wkey *k, int timeout) {
  if (k->next_time != ((void*)0)) {
    del_entry_time (k);
  }
  add_entry_time (k, timeout);
}
