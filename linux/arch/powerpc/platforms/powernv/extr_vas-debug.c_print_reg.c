
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vas_window {int dummy; } ;
struct seq_file {int dummy; } ;


 int read_hvwc_reg (struct vas_window*,char*,int ) ;
 int seq_printf (struct seq_file*,char*,int ,char*) ;

__attribute__((used)) static inline void print_reg(struct seq_file *s, struct vas_window *win,
   char *name, u32 reg)
{
 seq_printf(s, "0x%016llx %s\n", read_hvwc_reg(win, name, reg), name);
}
