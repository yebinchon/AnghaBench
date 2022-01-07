
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sys_reg_params {int dummy; } ;
struct sys_reg_desc {int dummy; } ;


 struct sys_reg_desc const* find_reg (struct sys_reg_params*,struct sys_reg_desc const*,unsigned int) ;
 int index_to_params (int ,struct sys_reg_params*) ;

const struct sys_reg_desc *find_reg_by_id(u64 id,
       struct sys_reg_params *params,
       const struct sys_reg_desc table[],
       unsigned int num)
{
 if (!index_to_params(id, params))
  return ((void*)0);

 return find_reg(params, table, num);
}
