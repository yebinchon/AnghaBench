
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int binlogs; TYPE_4__** B; int volume_id; } ;
typedef TYPE_1__ volume_t ;
struct TYPE_8__ {long long size; int prefix; int fd_rdonly; } ;


 int binlog_check (TYPE_4__*,TYPE_4__*) ;
 int close (int) ;
 int cmp_storage_binlog_file ;
 int exit (int) ;
 int kprintf (char*,int ) ;
 int qsort (TYPE_4__**,int,int,int ) ;
 int storage_open_binlogs (TYPE_1__*) ;

void storage_reoder_binlog_files (volume_t *V) {
  int k;
  long long max_binlog_size = -1;
  for (k = 0; k < V->binlogs; k++) {
    if (max_binlog_size < V->B[k]->size) {
      max_binlog_size = V->B[k]->size;
    }
  }
  qsort (V->B, V->binlogs, sizeof (V->B[0]), cmp_storage_binlog_file);

  if (V->binlogs <= 0 || max_binlog_size != V->B[0]->size) {
    kprintf ("volume %lld: Can't select binlog.\n", V->volume_id);
    exit (1);
  }

  storage_open_binlogs (V);
  V->B[0]->prefix = 1;
  int i;
  for (i = 1; i < V->binlogs; i++) {
    if (!binlog_check (V->B[0], V->B[i])) {
      V->B[i]->prefix = 1;
    } else {
      V->B[i]->prefix = 0;
      close (V->B[i]->fd_rdonly);
      V->B[i]->fd_rdonly = -1;
    }
  }
}
