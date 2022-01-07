
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdt_resource {int dummy; } ;
struct rdt_parse_data {int buf; } ;
struct rdt_domain {int have_new_ctrl; unsigned long new_ctrl; int id; } ;


 int EINVAL ;
 int bw_validate (int ,unsigned long*,struct rdt_resource*) ;
 int rdt_last_cmd_printf (char*,int ) ;

int parse_bw_intel(struct rdt_parse_data *data, struct rdt_resource *r,
     struct rdt_domain *d)
{
 unsigned long bw_val;

 if (d->have_new_ctrl) {
  rdt_last_cmd_printf("Duplicate domain %d\n", d->id);
  return -EINVAL;
 }

 if (!bw_validate(data->buf, &bw_val, r))
  return -EINVAL;
 d->new_ctrl = bw_val;
 d->have_new_ctrl = 1;

 return 0;
}
