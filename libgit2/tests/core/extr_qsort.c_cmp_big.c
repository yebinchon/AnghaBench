
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct big_entries {scalar_t__* c; } ;


 int GIT_UNUSED (void*) ;

__attribute__((used)) static int cmp_big(const void *_a, const void *_b, void *payload)
{
 const struct big_entries *a = (const struct big_entries *)_a, *b = (const struct big_entries *)_b;
 GIT_UNUSED(payload);
 return (a->c[0] < b->c[0]) ? -1 : (a->c[0] > b->c[0]) ? +1 : 0;
}
