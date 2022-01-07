
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECAG_CACHE_ATTRIBUTE ;
 unsigned long __ecag (int ,int) ;

__attribute__((used)) static inline unsigned long ecag(int ai, int li, int ti)
{
 return __ecag(ECAG_CACHE_ATTRIBUTE, ai << 4 | li << 1 | ti);
}
