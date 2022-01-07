
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {TYPE_1__* memoryTypes; } ;
struct demo {TYPE_2__ memory_properties; } ;
typedef int VkFlags ;
struct TYPE_3__ {int propertyFlags; } ;


 int VK_MAX_MEMORY_TYPES ;

__attribute__((used)) static bool memory_type_from_properties(struct demo *demo, uint32_t typeBits,
                                        VkFlags requirements_mask,
                                        uint32_t *typeIndex) {
    uint32_t i;

    for (i = 0; i < VK_MAX_MEMORY_TYPES; i++) {
        if ((typeBits & 1) == 1) {

            if ((demo->memory_properties.memoryTypes[i].propertyFlags &
                 requirements_mask) == requirements_mask) {
                *typeIndex = i;
                return 1;
            }
        }
        typeBits >>= 1;
    }

    return 0;
}
