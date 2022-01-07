
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modrm {scalar_t__ base; scalar_t__ type; int index; scalar_t__ shift; int offset; } ;
struct gen_state {int dummy; } ;
typedef int dword_t ;


 int addr ;
 int addr_none ;
 int g (int) ;
 int ga (int ,scalar_t__) ;
 int gag (int ,scalar_t__,int ) ;
 int gg (int ,int ) ;
 scalar_t__ modrm_mem_si ;
 scalar_t__ reg_none ;
 int si ;

bool gen_addr(struct gen_state *state, struct modrm *modrm, bool seg_gs, dword_t saved_ip) {
    if (modrm->base == reg_none)
        gg(addr_none, modrm->offset);
    else
        gag(addr, modrm->base, modrm->offset);
    if (modrm->type == modrm_mem_si)
        ga(si, modrm->index * 4 + modrm->shift);
    if (seg_gs)
        g(seg_gs);
    return 1;
}
