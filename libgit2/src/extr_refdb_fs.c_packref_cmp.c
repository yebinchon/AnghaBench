
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packref {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int packref_cmp(const void *a_, const void *b_)
{
 const struct packref *a = a_, *b = b_;
 return strcmp(a->name, b->name);
}
