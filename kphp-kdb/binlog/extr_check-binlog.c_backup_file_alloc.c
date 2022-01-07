
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int binlog_prefix_len; int filename; } ;
typedef TYPE_1__ backup_file_t ;


 TYPE_1__* zmalloc0 (int) ;
 int zstrdup (char*) ;

__attribute__((used)) static backup_file_t *backup_file_alloc (char *filename, int len) {

  backup_file_t *V = zmalloc0 (sizeof (backup_file_t));
  V->filename = zstrdup (filename);
  V->binlog_prefix_len = len;
  return V;
}
