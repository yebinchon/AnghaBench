
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sclhi () ;
 int sdahi () ;
 int sdalo () ;

__attribute__((used)) static void i2c_stop(void)
{
 sdalo();
 sclhi();
 sdahi();
}
