
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 int ETIMEDOUT ;
 int SSSR_RNE ;
 scalar_t__ Ser4SSDR ;
 int Ser4SSSR ;
 int TIMEOUT ;
 int cpu_relax () ;

int ssp_read_word(u16 *data)
{
 int timeout = TIMEOUT;

 while (!(Ser4SSSR & SSSR_RNE)) {
         if (!--timeout)
          return -ETIMEDOUT;
  cpu_relax();
 }

 *data = (u16)Ser4SSDR;

 return 0;
}
