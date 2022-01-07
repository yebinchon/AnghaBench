
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct desc_struct {scalar_t__ g; } ;


 int get_desc_limit (struct desc_struct*) ;

__attribute__((used)) static u32 desc_limit_scaled(struct desc_struct *desc)
{
 u32 limit = get_desc_limit(desc);

 return desc->g ? (limit << 12) | 0xfff : limit;
}
