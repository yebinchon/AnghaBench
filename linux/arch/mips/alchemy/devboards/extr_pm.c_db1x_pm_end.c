
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AU1000_SYS_WAKEMSK ;
 int AU1000_SYS_WAKESRC ;
 int alchemy_rdsys (int ) ;
 int alchemy_wrsys (int ,int ) ;
 int db1x_pm_last_wakesrc ;

__attribute__((used)) static void db1x_pm_end(void)
{



 db1x_pm_last_wakesrc = alchemy_rdsys(AU1000_SYS_WAKESRC);

 alchemy_wrsys(0, AU1000_SYS_WAKEMSK);
 alchemy_wrsys(0, AU1000_SYS_WAKESRC);
}
