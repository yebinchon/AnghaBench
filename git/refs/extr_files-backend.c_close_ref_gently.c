
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_lock {int lk; } ;


 scalar_t__ close_lock_file_gently (int *) ;

__attribute__((used)) static int close_ref_gently(struct ref_lock *lock)
{
 if (close_lock_file_gently(&lock->lk))
  return -1;
 return 0;
}
