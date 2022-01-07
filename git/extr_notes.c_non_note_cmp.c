
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct non_note {int path; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int non_note_cmp(const struct non_note *a, const struct non_note *b)
{
 return strcmp(a->path, b->path);
}
