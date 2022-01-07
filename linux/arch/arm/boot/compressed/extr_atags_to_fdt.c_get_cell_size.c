
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int fdt32_to_cpu (int const) ;
 int* getprop (void const*,char*,char*,int*) ;

__attribute__((used)) static uint32_t get_cell_size(const void *fdt)
{
 int len;
 uint32_t cell_size = 1;
 const uint32_t *size_len = getprop(fdt, "/", "#size-cells", &len);

 if (size_len)
  cell_size = fdt32_to_cpu(*size_len);
 return cell_size;
}
