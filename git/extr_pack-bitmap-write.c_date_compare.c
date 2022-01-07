
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {scalar_t__ date; } ;



__attribute__((used)) static int date_compare(const void *_a, const void *_b)
{
 struct commit *a = *(struct commit **)_a;
 struct commit *b = *(struct commit **)_b;
 return (long)b->date - (long)a->date;
}
