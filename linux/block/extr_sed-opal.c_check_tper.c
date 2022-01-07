
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct d0_tper_features {int supported_features; } ;


 int TPER_SYNC_SUPPORTED ;
 int pr_debug (char*,int) ;

__attribute__((used)) static bool check_tper(const void *data)
{
 const struct d0_tper_features *tper = data;
 u8 flags = tper->supported_features;

 if (!(flags & TPER_SYNC_SUPPORTED)) {
  pr_debug("TPer sync not supported. flags = %d\n",
    tper->supported_features);
  return 0;
 }

 return 1;
}
