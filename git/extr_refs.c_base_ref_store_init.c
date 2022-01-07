
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {struct ref_storage_be const* be; } ;
struct ref_storage_be {int dummy; } ;



void base_ref_store_init(struct ref_store *refs,
    const struct ref_storage_be *be)
{
 refs->be = be;
}
