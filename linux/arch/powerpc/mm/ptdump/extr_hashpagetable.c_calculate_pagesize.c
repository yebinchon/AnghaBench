
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_state {int seq; } ;


 int seq_printf (int ,char*,char*,int,char const) ;

__attribute__((used)) static int calculate_pagesize(struct pg_state *st, int ps, char s[])
{
 static const char units[] = "BKMGTPE";
 const char *unit = units;

 while (ps > 9 && unit[1]) {
  ps -= 10;
  unit++;
 }
 seq_printf(st->seq, "  %s_ps: %i%c\t", s, 1<<ps, *unit);
 return ps;
}
