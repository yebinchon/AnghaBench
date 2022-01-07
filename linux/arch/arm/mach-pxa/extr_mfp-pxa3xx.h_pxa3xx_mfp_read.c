
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long mfp_read (int) ;

__attribute__((used)) static inline unsigned long pxa3xx_mfp_read(int mfp)
{
 return mfp_read(mfp);
}
