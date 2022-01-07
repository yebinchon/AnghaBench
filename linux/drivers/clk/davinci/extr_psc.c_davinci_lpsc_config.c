
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_lpsc_clk {int flags; int md; int regmap; int pd; } ;
typedef enum davinci_lpsc_state { ____Placeholder_davinci_lpsc_state } davinci_lpsc_state ;


 int BIT (int ) ;
 int EPCPR ;
 int LPSC_FORCE ;
 int MDCTL (int ) ;
 int MDCTL_FORCE ;
 int MDSTAT (int ) ;
 int MDSTAT_STATE_MASK ;
 int PDCTL (int ) ;
 int PDCTL_EPCGOOD ;
 int PDCTL_NEXT ;
 int PDSTAT (int ) ;
 int PDSTAT_STATE_MASK ;
 int PTCMD ;
 int PTSTAT ;
 int regmap_read (int ,int ,int*) ;
 int regmap_read_poll_timeout (int ,int ,int,int,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 int regmap_write_bits (int ,int ,int,int) ;

__attribute__((used)) static void davinci_lpsc_config(struct davinci_lpsc_clk *lpsc,
    enum davinci_lpsc_state next_state)
{
 u32 epcpr, pdstat, mdstat, ptstat;

 regmap_write_bits(lpsc->regmap, MDCTL(lpsc->md), MDSTAT_STATE_MASK,
     next_state);

 if (lpsc->flags & LPSC_FORCE)
  regmap_write_bits(lpsc->regmap, MDCTL(lpsc->md), MDCTL_FORCE,
      MDCTL_FORCE);

 regmap_read(lpsc->regmap, PDSTAT(lpsc->pd), &pdstat);
 if ((pdstat & PDSTAT_STATE_MASK) == 0) {
  regmap_write_bits(lpsc->regmap, PDCTL(lpsc->pd), PDCTL_NEXT,
      PDCTL_NEXT);

  regmap_write(lpsc->regmap, PTCMD, BIT(lpsc->pd));

  regmap_read_poll_timeout(lpsc->regmap, EPCPR, epcpr,
      epcpr & BIT(lpsc->pd), 0, 0);

  regmap_write_bits(lpsc->regmap, PDCTL(lpsc->pd), PDCTL_EPCGOOD,
      PDCTL_EPCGOOD);
 } else {
  regmap_write(lpsc->regmap, PTCMD, BIT(lpsc->pd));
 }

 regmap_read_poll_timeout(lpsc->regmap, PTSTAT, ptstat,
     !(ptstat & BIT(lpsc->pd)), 0, 0);

 regmap_read_poll_timeout(lpsc->regmap, MDSTAT(lpsc->md), mdstat,
     (mdstat & MDSTAT_STATE_MASK) == next_state,
     0, 0);
}
