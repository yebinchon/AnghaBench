
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* hnext; } ;
typedef TYPE_1__ backup_file_t ;


 TYPE_1__** B ;
 int backup_file_free (TYPE_1__*) ;

__attribute__((used)) static void backup_hash_init (void) {
  int i;
  for (i = 0; i < 10007; i++) {
    backup_file_t *F, *W;
    for (F = B[i]; F; F = W) {
      W = F->hnext;
      backup_file_free (F);
    }
    B[i] = 0;
  }
}
