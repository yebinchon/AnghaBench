
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_resources {int iomem; } ;
typedef int __u64 ;


 int apei_res_add (int *,int ,int ) ;

__attribute__((used)) static int apei_get_res_callback(__u64 start, __u64 size, void *data)
{
 struct apei_resources *resources = data;
 return apei_res_add(&resources->iomem, start, size);
}
