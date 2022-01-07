
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct branch {char const** merge_name; scalar_t__ merge_nr; int merge_alloc; } ;


 int ALLOC_GROW (char const**,scalar_t__,int ) ;

__attribute__((used)) static void add_merge(struct branch *branch, const char *name)
{
 ALLOC_GROW(branch->merge_name, branch->merge_nr + 1,
     branch->merge_alloc);
 branch->merge_name[branch->merge_nr++] = name;
}
