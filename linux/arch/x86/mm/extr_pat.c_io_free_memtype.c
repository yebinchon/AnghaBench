
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resource_size_t ;


 int free_memtype (int ,int ) ;

void io_free_memtype(resource_size_t start, resource_size_t end)
{
 free_memtype(start, end);
}
