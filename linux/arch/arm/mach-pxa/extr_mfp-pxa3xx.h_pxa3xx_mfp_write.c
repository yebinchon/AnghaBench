
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mfp_write (int,unsigned long) ;

__attribute__((used)) static inline void pxa3xx_mfp_write(int mfp, unsigned long val)
{
 mfp_write(mfp, val);
}
