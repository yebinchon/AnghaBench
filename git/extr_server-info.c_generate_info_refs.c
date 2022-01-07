
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_info_ctx {int dummy; } ;


 int add_info_ref ;
 int for_each_ref (int ,struct update_info_ctx*) ;

__attribute__((used)) static int generate_info_refs(struct update_info_ctx *uic)
{
 return for_each_ref(add_info_ref, uic);
}
