
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int transaction_id; } ;
typedef TYPE_1__ transaction_t ;


 scalar_t__ PATH_MAX ;
 int assert (int) ;
 scalar_t__ snprintf (char*,scalar_t__,char*,char*,int) ;
 char* tmp_dir ;

__attribute__((used)) static void get_transaction_dir (transaction_t *T, char dir[PATH_MAX]) {
  assert (snprintf (dir, PATH_MAX, "%s/%08d", tmp_dir, T->transaction_id) < PATH_MAX);
}
