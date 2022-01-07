
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int log_wptr; } ;


 TYPE_1__ W ;
 int bytes_after_crc32 ;

void unalloc_log_event (int bytes) {
  bytes = (bytes + 3) & -4;
  W.log_wptr -= bytes;
  bytes_after_crc32 -= bytes;
}
