
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ orig_file_size; } ;
struct TYPE_4__ {TYPE_1__ S; } ;
typedef TYPE_2__ backup_file_t ;



__attribute__((used)) static int cmp_backups_by_size (const void *a, const void *b) {
  backup_file_t *x = *((backup_file_t **) a);
  backup_file_t *y = *((backup_file_t **) b);
  if (x->S.orig_file_size > y->S.orig_file_size) {
    return -1;
  }
  if (x->S.orig_file_size < y->S.orig_file_size) {
    return 1;
  }
  return 0;
}
