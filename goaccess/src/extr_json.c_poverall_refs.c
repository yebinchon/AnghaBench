
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GJSON ;


 int OVERALL_REF ;
 int REFERRERS ;
 int ht_get_size_datamap (int ) ;
 int pskeyival (int *,int ,int ,int,int ) ;

__attribute__((used)) static void
poverall_refs (GJSON * json, int sp)
{
  pskeyival (json, OVERALL_REF, ht_get_size_datamap (REFERRERS), sp, 0);
}
