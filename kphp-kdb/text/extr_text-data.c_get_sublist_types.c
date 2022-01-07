
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sublist_descr {int dummy; } ;


 int Sublists ;
 int assert (int) ;
 int memcpy (struct sublist_descr*,int ,int) ;
 int sublists_num ;

int get_sublist_types (struct sublist_descr *A) {
  assert (sublists_num >= 0 && sublists_num <= 16);
  memcpy (A, Sublists, sizeof (struct sublist_descr) * sublists_num);
  return sublists_num;
}
