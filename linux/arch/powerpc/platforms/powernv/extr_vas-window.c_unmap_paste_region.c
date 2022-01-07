
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vas_window {int * paste_addr_name; int * paste_kaddr; } ;


 int compute_paste_address (struct vas_window*,int *,int*) ;
 int kfree (int *) ;
 int unmap_region (int *,int ,int) ;

__attribute__((used)) static void unmap_paste_region(struct vas_window *window)
{
 int len;
 u64 busaddr_start;

 if (window->paste_kaddr) {
  compute_paste_address(window, &busaddr_start, &len);
  unmap_region(window->paste_kaddr, busaddr_start, len);
  window->paste_kaddr = ((void*)0);
  kfree(window->paste_addr_name);
  window->paste_addr_name = ((void*)0);
 }
}
