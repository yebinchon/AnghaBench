
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HBIRD_ESTAR_MODE_ADDR ;
 unsigned long read_hbreg (int ) ;

__attribute__((used)) static void __us2e_freq_get(void *arg)
{
 unsigned long *estar = arg;

 *estar = read_hbreg(HBIRD_ESTAR_MODE_ADDR);
}
