
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
typedef TYPE_1__ sortedcache_test_struct ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int sortedcache_test_struct_cmp(const void *a_, const void *b_)
{
 const sortedcache_test_struct *a = a_, *b = b_;
 return strcmp(a->path, b->path);
}
