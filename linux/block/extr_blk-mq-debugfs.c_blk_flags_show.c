
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int flags ;


 unsigned long const BIT (int) ;
 int BITS_PER_BYTE ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char const* const) ;

__attribute__((used)) static int blk_flags_show(struct seq_file *m, const unsigned long flags,
     const char *const *flag_name, int flag_name_count)
{
 bool sep = 0;
 int i;

 for (i = 0; i < sizeof(flags) * BITS_PER_BYTE; i++) {
  if (!(flags & BIT(i)))
   continue;
  if (sep)
   seq_puts(m, "|");
  sep = 1;
  if (i < flag_name_count && flag_name[i])
   seq_puts(m, flag_name[i]);
  else
   seq_printf(m, "%d", i);
 }
 return 0;
}
