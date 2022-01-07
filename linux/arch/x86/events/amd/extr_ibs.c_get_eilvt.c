
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_EILVT_MSG_NMI ;
 int setup_APIC_eilvt (int,int ,int ,int) ;

__attribute__((used)) static inline int get_eilvt(int offset)
{
 return !setup_APIC_eilvt(offset, 0, APIC_EILVT_MSG_NMI, 1);
}
