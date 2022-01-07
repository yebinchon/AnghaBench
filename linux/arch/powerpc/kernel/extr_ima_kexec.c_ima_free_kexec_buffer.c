
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int length; int value; } ;


 int ENOENT ;
 int do_get_kexec_buffer (int ,int ,unsigned long*,size_t*) ;
 int memblock_free (unsigned long,size_t) ;
 int of_chosen ;
 struct property* of_find_property (int ,char*,int *) ;
 int of_remove_property (int ,struct property*) ;

int ima_free_kexec_buffer(void)
{
 int ret;
 unsigned long addr;
 size_t size;
 struct property *prop;

 prop = of_find_property(of_chosen, "linux,ima-kexec-buffer", ((void*)0));
 if (!prop)
  return -ENOENT;

 ret = do_get_kexec_buffer(prop->value, prop->length, &addr, &size);
 if (ret)
  return ret;

 ret = of_remove_property(of_chosen, prop);
 if (ret)
  return ret;

 return memblock_free(addr, size);

}
