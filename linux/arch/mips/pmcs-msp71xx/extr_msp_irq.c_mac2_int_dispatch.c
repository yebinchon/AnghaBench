
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSP_INT_SAR ;
 int do_IRQ (int ) ;

__attribute__((used)) static inline void mac2_int_dispatch(void) { do_IRQ(MSP_INT_SAR); }
