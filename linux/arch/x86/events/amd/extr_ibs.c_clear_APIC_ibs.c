
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_EILVT_MSG_FIX ;
 int get_ibs_lvt_offset () ;
 int setup_APIC_eilvt (int,int ,int ,int) ;

__attribute__((used)) static void clear_APIC_ibs(void)
{
 int offset;

 offset = get_ibs_lvt_offset();
 if (offset >= 0)
  setup_APIC_eilvt(offset, 0, APIC_EILVT_MSG_FIX, 1);
}
