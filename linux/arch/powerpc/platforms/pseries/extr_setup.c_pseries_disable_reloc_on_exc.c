
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_IS_LONG_BUSY (long) ;
 long H_SUCCESS ;
 long disable_reloc_on_exceptions () ;
 int get_longbusy_msecs (long) ;
 int mdelay (int ) ;
 int pr_warn (char*,long) ;

void pseries_disable_reloc_on_exc(void)
{
 long rc;

 while (1) {
  rc = disable_reloc_on_exceptions();
  if (!H_IS_LONG_BUSY(rc))
   break;
  mdelay(get_longbusy_msecs(rc));
 }
 if (rc != H_SUCCESS)
  pr_warn("Warning: Failed to disable relocation on exceptions: %ld\n",
   rc);
}
