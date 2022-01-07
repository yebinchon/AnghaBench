
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCE_FLUSH_ERAT ;
 int MCE_FLUSH_SLB ;
 int MCE_FLUSH_TLB ;
 int flush_and_reload_slb () ;
 int flush_erat () ;
 int tlbiel_all () ;

__attribute__((used)) static int mce_flush(int what)
{






 if (what == MCE_FLUSH_ERAT) {
  flush_erat();
  return 1;
 }
 if (what == MCE_FLUSH_TLB) {
  tlbiel_all();
  return 1;
 }

 return 0;
}
