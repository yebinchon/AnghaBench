
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int userplace_t ;


 int NOTIFY_MODE ;
 int assert (int) ;
 int userplace_kept ;
 int zfree (int *,int) ;

__attribute__((used)) static void free_userplace (userplace_t *A) {
  assert (NOTIFY_MODE);
  assert (userplace_kept -- > 0);
  zfree (A, sizeof (userplace_t));
}
