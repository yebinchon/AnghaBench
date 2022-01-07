
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* backups; scalar_t__ binlog; } ;
typedef TYPE_1__ file_t ;
struct TYPE_5__ {int S; struct TYPE_5__* next; } ;
typedef TYPE_2__ backup_file_t ;


 int close_binlog (scalar_t__,int) ;
 int stream_close (int *) ;

__attribute__((used)) static void file_close (file_t *F) {
  close_binlog (F->binlog, 1);
  F->binlog = 0;
  backup_file_t *f;
  for (f = F->backups; f != ((void*)0); f = f->next) {
    stream_close (&f->S);
  }
}
