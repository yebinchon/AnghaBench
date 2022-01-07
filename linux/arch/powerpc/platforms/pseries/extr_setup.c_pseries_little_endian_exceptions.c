
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* progress ) (char*,int ) ;} ;


 int H_IS_LONG_BUSY (long) ;
 long enable_little_endian_exceptions () ;
 int get_longbusy_msecs (long) ;
 int mdelay (int ) ;
 int panic (char*) ;
 TYPE_1__ ppc_md ;
 int stub1 (char*,int ) ;

void pseries_little_endian_exceptions(void)
{
 long rc;

 while (1) {
  rc = enable_little_endian_exceptions();
  if (!H_IS_LONG_BUSY(rc))
   break;
  mdelay(get_longbusy_msecs(rc));
 }
 if (rc) {
  ppc_md.progress("H_SET_MODE LE exception fail", 0);
  panic("Could not enable little endian exceptions");
 }
}
