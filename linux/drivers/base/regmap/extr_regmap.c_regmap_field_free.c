
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_field {int dummy; } ;


 int kfree (struct regmap_field*) ;

void regmap_field_free(struct regmap_field *field)
{
 kfree(field);
}
