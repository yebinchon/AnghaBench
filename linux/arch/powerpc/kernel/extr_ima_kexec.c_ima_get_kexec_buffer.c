
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 void* __va (unsigned long) ;
 int do_get_kexec_buffer (void const*,int,unsigned long*,size_t*) ;
 int of_chosen ;
 void* of_get_property (int ,char*,int*) ;

int ima_get_kexec_buffer(void **addr, size_t *size)
{
 int ret, len;
 unsigned long tmp_addr;
 size_t tmp_size;
 const void *prop;

 prop = of_get_property(of_chosen, "linux,ima-kexec-buffer", &len);
 if (!prop)
  return -ENOENT;

 ret = do_get_kexec_buffer(prop, len, &tmp_addr, &tmp_size);
 if (ret)
  return ret;

 *addr = __va(tmp_addr);
 *size = tmp_size;

 return 0;
}
