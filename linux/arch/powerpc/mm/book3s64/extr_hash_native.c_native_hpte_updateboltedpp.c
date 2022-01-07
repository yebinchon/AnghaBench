
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {int r; } ;


 unsigned long HPTE_R_N ;
 unsigned long HPTE_R_PPP ;
 unsigned long be64_to_cpu (int ) ;
 int cpu_to_be64 (unsigned long) ;
 unsigned long get_kernel_vsid (unsigned long,int) ;
 unsigned long hpt_vpn (unsigned long,unsigned long,int) ;
 struct hash_pte* htab_address ;
 long native_hpte_find (unsigned long,int,int) ;
 int panic (char*) ;
 int tlbie (unsigned long,int,int,int,int ) ;

__attribute__((used)) static void native_hpte_updateboltedpp(unsigned long newpp, unsigned long ea,
           int psize, int ssize)
{
 unsigned long vpn;
 unsigned long vsid;
 long slot;
 struct hash_pte *hptep;

 vsid = get_kernel_vsid(ea, ssize);
 vpn = hpt_vpn(ea, vsid, ssize);

 slot = native_hpte_find(vpn, psize, ssize);
 if (slot == -1)
  panic("could not find page to bolt\n");
 hptep = htab_address + slot;


 hptep->r = cpu_to_be64((be64_to_cpu(hptep->r) &
    ~(HPTE_R_PPP | HPTE_R_N)) |
          (newpp & (HPTE_R_PPP | HPTE_R_N)));




 tlbie(vpn, psize, psize, ssize, 0);
}
