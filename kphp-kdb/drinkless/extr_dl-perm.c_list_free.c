
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int perm_list ;


 int dl_free (int *,int) ;

void list_free (perm_list *v) {
  dl_free (v, sizeof (perm_list));
}
