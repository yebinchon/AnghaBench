
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct regmap* private; } ;
struct regmap {int max_register; scalar_t__ reg_stride; } ;


 int regmap_calc_reg_len (int) ;
 scalar_t__ regmap_precious (struct regmap*,int) ;
 scalar_t__ regmap_readable (struct regmap*,int) ;
 scalar_t__ regmap_volatile (struct regmap*,int) ;
 scalar_t__ regmap_writeable (struct regmap*,int) ;
 int seq_printf (struct seq_file*,char*,int,int,char,char,char,char) ;

__attribute__((used)) static int regmap_access_show(struct seq_file *s, void *ignored)
{
 struct regmap *map = s->private;
 int i, reg_len;

 reg_len = regmap_calc_reg_len(map->max_register);

 for (i = 0; i <= map->max_register; i += map->reg_stride) {

  if (!regmap_readable(map, i) && !regmap_writeable(map, i))
   continue;


  seq_printf(s, "%.*x: %c %c %c %c\n", reg_len, i,
      regmap_readable(map, i) ? 'y' : 'n',
      regmap_writeable(map, i) ? 'y' : 'n',
      regmap_volatile(map, i) ? 'y' : 'n',
      regmap_precious(map, i) ? 'y' : 'n');
 }

 return 0;
}
