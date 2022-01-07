
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPAL_XIVE_MODE_EMU ;
 int opal_xive_reset (int ) ;

__attribute__((used)) static void xive_native_shutdown(void)
{

 opal_xive_reset(OPAL_XIVE_MODE_EMU);
}
