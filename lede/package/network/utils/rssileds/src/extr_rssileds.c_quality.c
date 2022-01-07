
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwinfo_ops {scalar_t__ (* quality ) (char const*,int*) ;scalar_t__ (* quality_max ) (char const*,int*) ;} ;


 int qual_max ;
 scalar_t__ stub1 (char const*,int*) ;
 scalar_t__ stub2 (char const*,int*) ;

int quality(const struct iwinfo_ops *iw, const char *ifname)
{
 int qual;

 if ( ! iw ) return -1;

 if (qual_max < 1)
  if (iw->quality_max(ifname, &qual_max))
   return -1;

 if (iw->quality(ifname, &qual))
  return -1;

 return ( qual * 100 ) / qual_max ;
}
