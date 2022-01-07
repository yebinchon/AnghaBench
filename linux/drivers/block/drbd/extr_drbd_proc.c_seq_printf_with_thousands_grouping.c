
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 scalar_t__ likely (int) ;
 int seq_printf (struct seq_file*,char*,long,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void seq_printf_with_thousands_grouping(struct seq_file *seq, long v)
{

 if (unlikely(v >= 1000000)) {

  seq_printf(seq, "%ld,", v / 1000000);
  v %= 1000000;
  seq_printf(seq, "%03ld,%03ld", v/1000, v % 1000);
 } else if (likely(v >= 1000))
  seq_printf(seq, "%ld,%03ld", v/1000, v % 1000);
 else
  seq_printf(seq, "%ld", v);
}
