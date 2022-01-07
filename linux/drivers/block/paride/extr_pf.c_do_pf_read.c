
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_pf_read_start ;
 int nice ;
 int ps_set_intr (int ,int *,int ,int ) ;

__attribute__((used)) static void do_pf_read(void)
{
 ps_set_intr(do_pf_read_start, ((void*)0), 0, nice);
}
