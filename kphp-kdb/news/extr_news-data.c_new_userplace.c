
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int userplace_t ;


 int NOTIFY_MODE ;
 int assert (int ) ;
 int userplace_kept ;
 int * zmalloc0 (int) ;

__attribute__((used)) static userplace_t *new_userplace (void) {
  assert (NOTIFY_MODE);
  userplace_kept ++;
  return zmalloc0 (sizeof (userplace_t));
}
