
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {int text; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int compare_strings(const void *a, const void *b)
{
 const struct line *x = a, *y = b;
 return strcmp(x->text, y->text);
}
