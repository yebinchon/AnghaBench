
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct s3c_freq {int armclk; int pclk; int hclk; int fclk; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void show_max(struct seq_file *seq, struct s3c_freq *f)
{
 seq_printf(seq, "MAX: F=%lu, H=%lu, P=%lu, A=%lu\n",
     f->fclk, f->hclk, f->pclk, f->armclk);
}
