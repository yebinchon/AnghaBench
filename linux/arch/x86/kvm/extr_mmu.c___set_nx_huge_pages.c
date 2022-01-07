
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int itlb_multihit_kvm_mitigation ;
 int nx_huge_pages ;

__attribute__((used)) static void __set_nx_huge_pages(bool val)
{
 nx_huge_pages = itlb_multihit_kvm_mitigation = val;
}
