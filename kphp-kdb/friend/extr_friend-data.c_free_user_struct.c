
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;


 int zfree (int *,int) ;

__attribute__((used)) static void free_user_struct (user_t *U) {
  zfree (U, sizeof (user_t));
}
