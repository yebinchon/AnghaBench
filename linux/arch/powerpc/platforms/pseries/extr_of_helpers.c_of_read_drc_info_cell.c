
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct of_drc_info {char* drc_type; char* drc_name_prefix; int drc_index_start; int drc_name_suffix_start; int num_sequential_elems; int sequential_inc; int drc_power_domain; scalar_t__ last_drc_index; } ;
typedef int __be32 ;


 int EINVAL ;
 char* of_prop_next_string (struct property*,char const*) ;
 int * of_prop_next_u32 (struct property*,int const*,int*) ;

int of_read_drc_info_cell(struct property **prop, const __be32 **curval,
   struct of_drc_info *data)
{
 const char *p;
 const __be32 *p2;

 if (!data)
  return -EINVAL;


 p = data->drc_type = (char*) (*curval);
 p = of_prop_next_string(*prop, p);
 if (!p)
  return -EINVAL;


 data->drc_name_prefix = (char *)p;
 p = of_prop_next_string(*prop, p);
 if (!p)
  return -EINVAL;


 p2 = (const __be32 *)p;
 p2 = of_prop_next_u32(*prop, p2, &data->drc_index_start);
 if (!p2)
  return -EINVAL;


 p2 = of_prop_next_u32(*prop, p2, &data->drc_name_suffix_start);
 if (!p2)
  return -EINVAL;


 p2 = of_prop_next_u32(*prop, p2, &data->num_sequential_elems);
 if (!p2)
  return -EINVAL;


 p2 = of_prop_next_u32(*prop, p2, &data->sequential_inc);
 if (!p2)
  return -EINVAL;


 p2 = of_prop_next_u32(*prop, p2, &data->drc_power_domain);
 if (!p2)
  return -EINVAL;


 (*curval) = (void *)p2;
 data->last_drc_index = data->drc_index_start +
  ((data->num_sequential_elems - 1) * data->sequential_inc);

 return 0;
}
