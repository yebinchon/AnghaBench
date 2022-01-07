
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_IS_LONG_BUSY (long) ;
 long enable_big_endian_exceptions () ;
 int get_longbusy_msecs (long) ;
 int kdump_in_progress () ;
 int mdelay (int ) ;
 int panic (char*) ;

void pseries_big_endian_exceptions(void)
{
 long rc;

 while (1) {
  rc = enable_big_endian_exceptions();
  if (!H_IS_LONG_BUSY(rc))
   break;
  mdelay(get_longbusy_msecs(rc));
 }
 if (rc && !kdump_in_progress())
  panic("Could not enable big endian exceptions");
}
