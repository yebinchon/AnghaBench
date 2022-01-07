
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {void* next; } ;



__attribute__((used)) static void *ref_list_get_next(const void *a)
{
 return ((const struct ref *)a)->next;
}
