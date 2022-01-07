
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GJSON ;


 int OVERALL_VISITORS ;
 int VISITORS ;
 int ht_get_size_uniqmap (int ) ;
 int pskeyival (int *,int ,int ,int,int ) ;

__attribute__((used)) static void
poverall_visitors (GJSON * json, int sp)
{
  pskeyival (json, OVERALL_VISITORS, ht_get_size_uniqmap (VISITORS), sp, 0);
}
