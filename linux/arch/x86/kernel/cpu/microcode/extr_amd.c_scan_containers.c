
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cont_desc {int dummy; } ;


 size_t parse_container (int *,size_t,struct cont_desc*) ;

__attribute__((used)) static void scan_containers(u8 *ucode, size_t size, struct cont_desc *desc)
{
 while (size) {
  size_t s = parse_container(ucode, size, desc);
  if (!s)
   return;


  if (size >= s) {
   ucode += s;
   size -= s;
  } else {
   return;
  }
 }
}
