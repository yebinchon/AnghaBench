
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hard_trap_info {unsigned int tt; int signo; } ;


 int SIGHUP ;
 struct hard_trap_info* hard_trap_info ;

__attribute__((used)) static int computeSignal(unsigned int tt)
{
 struct hard_trap_info *ht;

 for (ht = hard_trap_info; ht->tt && ht->signo; ht++)
  if (ht->tt == tt)
   return ht->signo;

 return SIGHUP;
}
