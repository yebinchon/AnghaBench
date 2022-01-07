
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int irqreturn_t ;


 int CMUN_CRCS ;

 int CRCS_STAT_MASK ;
 int mfcmu (int ) ;
 int panic (char*,...) ;

__attribute__((used)) static irqreturn_t rst_wrn_handler(int irq, void *data) {
 u32 crcs = mfcmu(CMUN_CRCS);
 switch (crcs & CRCS_STAT_MASK) {
 case 128:
  panic("Received chassis-initiated reset request");
 default:
  panic("Unknown external reset: CRCS=0x%x", crcs);
 }
}
