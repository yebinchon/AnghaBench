
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_bit (unsigned long,int ) ;
 int context_map ;

void __destroy_context(unsigned long ctx)
{
 clear_bit(ctx, context_map);
}
