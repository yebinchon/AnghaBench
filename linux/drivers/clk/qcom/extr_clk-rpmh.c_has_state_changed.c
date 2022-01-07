
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_rpmh {int last_sent_aggr_state; int aggr_state; } ;


 int BIT (int ) ;

__attribute__((used)) static inline bool has_state_changed(struct clk_rpmh *c, u32 state)
{
 return (c->last_sent_aggr_state & BIT(state))
  != (c->aggr_state & BIT(state));
}
