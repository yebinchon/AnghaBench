
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirstat_file {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int dirstat_compare(const void *_a, const void *_b)
{
 const struct dirstat_file *a = _a;
 const struct dirstat_file *b = _b;
 return strcmp(a->name, b->name);
}
