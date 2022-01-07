
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct switch_dev {int dummy; } ;
struct mvsw61xx_state {int base_addr; int is_indirect; int bus; } ;


 struct mvsw61xx_state* get_state (struct switch_dev*) ;
 int r16 (int ,int ,int ,int,int) ;

__attribute__((used)) static inline u16
sr16(struct switch_dev *dev, int addr, int reg)
{
 struct mvsw61xx_state *state = get_state(dev);

 return r16(state->bus, state->is_indirect, state->base_addr, addr, reg);
}
