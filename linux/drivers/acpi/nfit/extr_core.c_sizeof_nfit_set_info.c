
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_set_info_map {int dummy; } ;
struct nfit_set_info {int dummy; } ;



__attribute__((used)) static size_t sizeof_nfit_set_info(int num_mappings)
{
 return sizeof(struct nfit_set_info)
  + num_mappings * sizeof(struct nfit_set_info_map);
}
