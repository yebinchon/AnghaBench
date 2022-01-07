
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct update_info_ctx {int dummy; } ;
struct TYPE_2__ {int p; } ;


 TYPE_1__** info ;
 int num_pack ;
 int pack_basename (int ) ;
 scalar_t__ uic_printf (struct update_info_ctx*,char*,...) ;

__attribute__((used)) static int write_pack_info_file(struct update_info_ctx *uic)
{
 int i;
 for (i = 0; i < num_pack; i++) {
  if (uic_printf(uic, "P %s\n", pack_basename(info[i]->p)) < 0)
   return -1;
 }
 if (uic_printf(uic, "\n") < 0)
  return -1;
 return 0;
}
