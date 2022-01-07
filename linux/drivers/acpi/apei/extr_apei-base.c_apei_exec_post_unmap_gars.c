
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_exec_context {int dummy; } ;


 int apei_exec_for_each_entry (struct apei_exec_context*,int ,int *,int *) ;
 int post_unmap_gar_callback ;

int apei_exec_post_unmap_gars(struct apei_exec_context *ctx)
{
 return apei_exec_for_each_entry(ctx, post_unmap_gar_callback,
     ((void*)0), ((void*)0));
}
