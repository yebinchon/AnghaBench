
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int * resource; } ;


 int of_iounmap (int *,int ,int ) ;
 int regs ;
 int resource_size (int *) ;

__attribute__((used)) static inline void apc_free(struct platform_device *op)
{
 of_iounmap(&op->resource[0], regs, resource_size(&op->resource[0]));
}
