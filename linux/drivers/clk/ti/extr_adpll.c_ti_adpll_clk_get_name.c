
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_adpll_data {int pa; int dev; int np; } ;


 int GFP_KERNEL ;
 char* devm_kzalloc (int ,scalar_t__,int ) ;
 int of_property_read_string_index (int ,char*,int,char const**) ;
 int sprintf (char*,char*,int ,char const*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static const char *ti_adpll_clk_get_name(struct ti_adpll_data *d,
      int output_index,
      const char *postfix)
{
 const char *name;
 int err;

 if (output_index >= 0) {
  err = of_property_read_string_index(d->np,
          "clock-output-names",
          output_index,
          &name);
  if (err)
   return ((void*)0);
 } else {
  const char *base_name = "adpll";
  char *buf;

  buf = devm_kzalloc(d->dev, 8 + 1 + strlen(base_name) + 1 +
        strlen(postfix), GFP_KERNEL);
  if (!buf)
   return ((void*)0);
  sprintf(buf, "%08lx.%s.%s", d->pa, base_name, postfix);
  name = buf;
 }

 return name;
}
