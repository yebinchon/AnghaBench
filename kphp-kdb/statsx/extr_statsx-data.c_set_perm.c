
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int dummy; } ;


 int del_use (struct counter*) ;

__attribute__((used)) static void set_perm (struct counter *C) {

  del_use (C);
}
