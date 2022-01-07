
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_boot_vector_element {int dummy; } ;


 int VECTOR_TABLE_SIZE ;
 int cvmx_boot_vector_init ;
 struct cvmx_boot_vector_element* cvmx_bootmem_alloc_named_range_once (int ,int ,unsigned long long,int,char*,int ) ;

struct cvmx_boot_vector_element *cvmx_boot_vector_get(void)
{
 struct cvmx_boot_vector_element *ret;

 ret = cvmx_bootmem_alloc_named_range_once(VECTOR_TABLE_SIZE, 0,
  (1ull << 32) - 1, 8, "__boot_vector1__", cvmx_boot_vector_init);
 return ret;
}
