
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int pr_crit (char*,unsigned char*,unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void bug_at(unsigned char *ip, int line)
{





 pr_crit("jump_label: Fatal kernel bug, unexpected op at %pS [%p] (%5ph) %d\n", ip, ip, ip, line);
 BUG();
}
