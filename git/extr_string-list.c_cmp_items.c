
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_sort_ctx {int (* cmp ) (int ,int ) ;} ;
struct string_list_item {int string; } ;


 int stub1 (int ,int ) ;

__attribute__((used)) static int cmp_items(const void *a, const void *b, void *ctx)
{
 struct string_list_sort_ctx *sort_ctx = ctx;
 const struct string_list_item *one = a;
 const struct string_list_item *two = b;
 return sort_ctx->cmp(one->string, two->string);
}
