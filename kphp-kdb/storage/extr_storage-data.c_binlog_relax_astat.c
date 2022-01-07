
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ fails; } ;
struct TYPE_5__ {double counter; scalar_t__ old_value; } ;
struct TYPE_7__ {TYPE_2__ st_read; TYPE_1__ as_read; } ;
typedef TYPE_3__ storage_binlog_file_t ;



__attribute__((used)) static void binlog_relax_astat (storage_binlog_file_t *B, double e) {
  B->as_read.counter *= e;
  B->as_read.counter += B->st_read.fails - B->as_read.old_value;
  B->as_read.old_value = B->st_read.fails;
}
