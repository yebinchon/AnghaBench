
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HBIRD_MEM_CNTL0_ADDR ;
 unsigned long MCTRL0_SREFRESH_ENAB ;
 unsigned long read_hbreg (int ) ;
 int write_hbreg (int ,unsigned long) ;

__attribute__((used)) static void self_refresh_ctl(int enable)
{
 unsigned long mctrl = read_hbreg(HBIRD_MEM_CNTL0_ADDR);

 if (enable)
  mctrl |= MCTRL0_SREFRESH_ENAB;
 else
  mctrl &= ~MCTRL0_SREFRESH_ENAB;
 write_hbreg(HBIRD_MEM_CNTL0_ADDR, mctrl);
 (void) read_hbreg(HBIRD_MEM_CNTL0_ADDR);
}
