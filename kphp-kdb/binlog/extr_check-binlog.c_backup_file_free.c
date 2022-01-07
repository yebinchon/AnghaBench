
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* filename; struct TYPE_5__* next; } ;
typedef TYPE_1__ backup_file_t ;


 int assert (int) ;
 int strlen (TYPE_1__*) ;
 int zfree (TYPE_1__*,int) ;

__attribute__((used)) static void backup_file_free (backup_file_t *F) {
  assert (F && F->filename);
  if (F->next) {
    backup_file_free (F->next);
    F->next = 0;
  }
  zfree (F->filename, strlen (F->filename) + 1);
  zfree (F, sizeof (*F));
}
