
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GJSON ;


 int OVERALL_FILES ;
 int REQUESTS ;
 int ht_get_size_datamap (int ) ;
 int pskeyival (int *,int ,int ,int,int ) ;

__attribute__((used)) static void
poverall_files (GJSON * json, int sp)
{
  pskeyival (json, OVERALL_FILES, ht_get_size_datamap (REQUESTS), sp, 0);
}
