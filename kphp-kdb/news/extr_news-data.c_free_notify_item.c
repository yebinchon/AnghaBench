
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int notify_t ;


 int NOTIFY_MODE ;
 int assert (int) ;
 int items_kept ;
 int zfree (int *,int) ;

__attribute__((used)) static void free_notify_item (notify_t *A) {
  assert (NOTIFY_MODE);
  assert (items_kept-- > 0);
  zfree (A, sizeof (notify_t));
}
