
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_partition {int dummy; } ;
struct mtd_part_parser_data {int dummy; } ;
struct mtd_info {int dummy; } ;


 int __mtdsplit_parse_jimage (struct mtd_info*,struct mtd_partition const**,struct mtd_part_parser_data*,int ) ;
 int jimage_verify_default ;

__attribute__((used)) static int
mtdsplit_jimage_parse_generic(struct mtd_info *master,
         const struct mtd_partition **pparts,
         struct mtd_part_parser_data *data)
{
 return __mtdsplit_parse_jimage(master, pparts, data,
          jimage_verify_default);
}
