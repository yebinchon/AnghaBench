
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_use (int) ;
 int del_use (int) ;

void renew_use (int pos) {
  del_use (pos);
  add_use (pos);
}
