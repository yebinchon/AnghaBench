
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct company* work; int uid; } ;
typedef TYPE_1__ user_t ;
struct company {struct company* next; int job; int company_name; int name_hashes; int job_hashes; } ;


 int delete_user_hashlist (int ,int ) ;
 int exact_strfree (int ) ;
 int zfree (struct company*,int) ;

__attribute__((used)) static void user_clear_work (user_t *U) {
  struct company *C, *Nx;
  for (C = U->work; C; C = Nx) {
    delete_user_hashlist (U->uid, C->job_hashes);
    delete_user_hashlist (U->uid, C->name_hashes);
    exact_strfree (C->company_name);
    exact_strfree (C->job);
    Nx = C->next;
    zfree (C, sizeof (struct company));
  }
  U->work = 0;
}
