
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int __be32 ;
struct TYPE_3__ {scalar_t__ opal_no; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ be32_to_cpu (int const) ;
 TYPE_1__* ops_info ;

__attribute__((used)) static int get_nr_attrs(const __be32 *ops, int len)
{
 int i, j;
 int nr_attrs = 0;

 for (i = 0; i < len; i++)
  for (j = 0; j < ARRAY_SIZE(ops_info); j++)
   if (be32_to_cpu(ops[i]) == ops_info[j].opal_no)
    nr_attrs++;

 return nr_attrs;
}
