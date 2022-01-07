
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {scalar_t__ next_use; scalar_t__ prev_use; } ;


 int add_use (struct counter*) ;
 int del_use (struct counter*) ;

__attribute__((used)) static void do_use (struct counter *C) {
  if (C->prev_use && C->next_use) {
    del_use (C);
    add_use (C);
  }
}
