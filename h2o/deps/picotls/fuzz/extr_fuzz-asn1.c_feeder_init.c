
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {size_t size; int const* data; } ;


 TYPE_1__ feeder ;

__attribute__((used)) static void feeder_init(const uint8_t *orig_data, size_t orig_size)
{
    feeder.data = orig_data;
    feeder.size = orig_size;
}
