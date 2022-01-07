
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int BAT_SHOW_601 (struct seq_file*,int,int ,int ) ;
 int SPRN_IBAT0L ;
 int SPRN_IBAT0U ;
 int SPRN_IBAT1L ;
 int SPRN_IBAT1U ;
 int SPRN_IBAT2L ;
 int SPRN_IBAT2U ;
 int SPRN_IBAT3L ;
 int SPRN_IBAT3U ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int bats_show_601(struct seq_file *m, void *v)
{
 seq_puts(m, "---[ Block Address Translation ]---\n");

 BAT_SHOW_601(m, 0, SPRN_IBAT0L, SPRN_IBAT0U);
 BAT_SHOW_601(m, 1, SPRN_IBAT1L, SPRN_IBAT1U);
 BAT_SHOW_601(m, 2, SPRN_IBAT2L, SPRN_IBAT2U);
 BAT_SHOW_601(m, 3, SPRN_IBAT3L, SPRN_IBAT3U);

 return 0;
}
