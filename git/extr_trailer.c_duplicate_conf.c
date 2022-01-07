
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf_info {void* command; void* key; void* name; } ;


 void* xstrdup_or_null (void*) ;

__attribute__((used)) static void duplicate_conf(struct conf_info *dst, const struct conf_info *src)
{
 *dst = *src;
 dst->name = xstrdup_or_null(src->name);
 dst->key = xstrdup_or_null(src->key);
 dst->command = xstrdup_or_null(src->command);
}
