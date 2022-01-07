
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int get_addr_size_cells (int*,int*) ;
 void* of_read_number (void const*,int) ;

__attribute__((used)) static int do_get_kexec_buffer(const void *prop, int len, unsigned long *addr,
          size_t *size)
{
 int ret, addr_cells, size_cells;

 ret = get_addr_size_cells(&addr_cells, &size_cells);
 if (ret)
  return ret;

 if (len < 4 * (addr_cells + size_cells))
  return -ENOENT;

 *addr = of_read_number(prop, addr_cells);
 *size = of_read_number(prop + 4 * addr_cells, size_cells);

 return 0;
}
