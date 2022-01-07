
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {int a; } ;


 int del_some_groups (int ,int ) ;
 int get_user (int ) ;

__attribute__((used)) static int clear_positive_groups (struct lev_generic *E) {
  return del_some_groups (get_user (E->a), 0);
}
