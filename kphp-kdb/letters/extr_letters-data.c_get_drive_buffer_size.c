
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {long long drive_l; long long drive_r; long long drive_old_mx; } ;


 TYPE_2__ header ;

long long get_drive_buffer_size (int priority) {
  long long l = header.data[priority].drive_l;
  long long r = header.data[priority].drive_r;
  if (l <= r) {
    return r - l;
  } else {
    return r + header.data[priority].drive_old_mx - l;
  }
}
