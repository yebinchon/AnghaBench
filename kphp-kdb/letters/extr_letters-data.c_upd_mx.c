
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ drive_old_mx; scalar_t__ drive_mx; scalar_t__ drive_r; scalar_t__ drive_l; } ;
typedef TYPE_1__ one_header ;


 int assert (int) ;

void upd_mx (one_header *data) {
  if (data->drive_old_mx < data->drive_mx) {
    assert (data->drive_r < data->drive_old_mx && data->drive_l <= data->drive_r);
  }
  data->drive_old_mx = data->drive_mx;
}
