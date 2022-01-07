
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ type; } ;


 int ALLOC_ARRAY (struct option*,int) ;
 scalar_t__ OPTION_END ;
 int memcpy (struct option*,struct option const*,int) ;
 int memset (struct option*,int ,int) ;

struct option *parse_options_dup(const struct option *o)
{
 struct option *opts;
 int nr = 0;

 while (o && o->type != OPTION_END) {
  nr++;
  o++;
 }

 ALLOC_ARRAY(opts, nr + 1);
 memcpy(opts, o - nr, sizeof(*o) * nr);
 memset(opts + nr, 0, sizeof(*opts));
 opts[nr].type = OPTION_END;
 return opts;
}
