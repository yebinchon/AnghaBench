
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_bootmem_desc {int dummy; } ;


 struct cvmx_bootmem_desc* cvmx_bootmem_desc ;

struct cvmx_bootmem_desc *cvmx_bootmem_get_desc(void)
{
 return cvmx_bootmem_desc;
}
