
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GJSON ;


 int NOT_FOUND ;
 int OVERALL_NOTFOUND ;
 int ht_get_size_datamap (int ) ;
 int pskeyival (int *,int ,int ,int,int ) ;

__attribute__((used)) static void
poverall_notfound (GJSON * json, int sp)
{
  pskeyival (json, OVERALL_NOTFOUND, ht_get_size_datamap (NOT_FOUND), sp, 0);
}
