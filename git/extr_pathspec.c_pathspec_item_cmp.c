
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec_item {int match; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int pathspec_item_cmp(const void *a_, const void *b_)
{
 struct pathspec_item *a, *b;

 a = (struct pathspec_item *)a_;
 b = (struct pathspec_item *)b_;
 return strcmp(a->match, b->match);
}
