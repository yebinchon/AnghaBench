
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; void* offset_last_wrap; void* offset_next_write; } ;


 TYPE_1__* header ;
 void* logbuffer ;
 int logbuffer_size ;
 void* loglastwrap ;
 void* logwalk ;

__attribute__((used)) static void store_log_markers(void) {
    header->offset_next_write = (logwalk - logbuffer);
    header->offset_last_wrap = (loglastwrap - logbuffer);
    header->size = logbuffer_size;
}
