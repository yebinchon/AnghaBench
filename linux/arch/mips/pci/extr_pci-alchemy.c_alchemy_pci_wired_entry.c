
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alchemy_pci_context {int last_elo1; int last_elo0; TYPE_1__* pci_cfg_vm; int wired_entry; } ;
struct TYPE_2__ {scalar_t__ addr; } ;


 int PM_4K ;
 int add_wired_entry (int ,int ,unsigned long,int ) ;
 int read_c0_wired () ;

__attribute__((used)) static void alchemy_pci_wired_entry(struct alchemy_pci_context *ctx)
{
 ctx->wired_entry = read_c0_wired();
 add_wired_entry(0, 0, (unsigned long)ctx->pci_cfg_vm->addr, PM_4K);
 ctx->last_elo0 = ctx->last_elo1 = ~0;
}
