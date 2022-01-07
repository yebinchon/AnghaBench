
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regbit {int bit; int name; } ;


 int pr_cont (char*,char const*,int ) ;

__attribute__((used)) static void print_bits(unsigned long val, struct regbit *bits, const char *sep)
{
 const char *s = "";

 for (; bits->bit; ++bits)
  if (val & bits->bit) {
   pr_cont("%s%s", s, bits->name);
   s = sep;
  }
}
