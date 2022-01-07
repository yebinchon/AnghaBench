
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ size; int * data; } ;


 TYPE_1__ feeder ;

__attribute__((used)) static uint8_t feeder_next_byte(void)
{
    if (feeder.size == 0) {
        return 0;
    }
    uint8_t byte = *feeder.data;
    --feeder.size;
    ++feeder.data;
    return byte;
}
