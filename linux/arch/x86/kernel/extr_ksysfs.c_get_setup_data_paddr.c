
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct setup_data {scalar_t__ next; } ;
struct TYPE_3__ {scalar_t__ setup_data; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;


 int EINVAL ;
 int ENOMEM ;
 int MEMREMAP_WB ;
 TYPE_2__ boot_params ;
 struct setup_data* memremap (scalar_t__,int,int ) ;
 int memunmap (struct setup_data*) ;

__attribute__((used)) static int get_setup_data_paddr(int nr, u64 *paddr)
{
 int i = 0;
 struct setup_data *data;
 u64 pa_data = boot_params.hdr.setup_data;

 while (pa_data) {
  if (nr == i) {
   *paddr = pa_data;
   return 0;
  }
  data = memremap(pa_data, sizeof(*data), MEMREMAP_WB);
  if (!data)
   return -ENOMEM;

  pa_data = data->next;
  memunmap(data);
  i++;
 }
 return -EINVAL;
}
