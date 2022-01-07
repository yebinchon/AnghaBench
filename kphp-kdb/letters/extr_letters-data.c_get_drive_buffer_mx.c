
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {long long drive_mx; } ;


 TYPE_2__ header ;

long long get_drive_buffer_mx (int priority) {
  return header.data[priority].drive_mx;
}
