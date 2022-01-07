
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int __be32 ;
struct TYPE_2__ {long status; void* result; void* buf_size; void* buf; } ;


 int __pa (void*) ;
 void* be32_to_cpu (int ) ;
 int cpu_to_be32 (void*) ;
 long opal_validate_flash (int ,int *,int *) ;
 TYPE_1__ validate_flash_data ;

__attribute__((used)) static inline void opal_flash_validate(void)
{
 long ret;
 void *buf = validate_flash_data.buf;
 __be32 size = cpu_to_be32(validate_flash_data.buf_size);
 __be32 result;

 ret = opal_validate_flash(__pa(buf), &size, &result);

 validate_flash_data.status = ret;
 validate_flash_data.buf_size = be32_to_cpu(size);
 validate_flash_data.result = be32_to_cpu(result);
}
