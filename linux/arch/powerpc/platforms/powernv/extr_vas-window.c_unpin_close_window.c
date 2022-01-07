
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vas_window {int dummy; } ;


 int SET_FIELD (int ,int ,int ) ;
 int VAS_WINCTL_OPEN ;
 int VAS_WINCTL_PIN ;
 int VREG (int ) ;
 int WINCTL ;
 int read_hvwc_reg (struct vas_window*,int ) ;
 int write_hvwc_reg (struct vas_window*,int ,int ) ;

__attribute__((used)) static void unpin_close_window(struct vas_window *window)
{
 u64 val;

 val = read_hvwc_reg(window, VREG(WINCTL));
 val = SET_FIELD(VAS_WINCTL_PIN, val, 0);
 val = SET_FIELD(VAS_WINCTL_OPEN, val, 0);
 write_hvwc_reg(window, VREG(WINCTL), val);
}
