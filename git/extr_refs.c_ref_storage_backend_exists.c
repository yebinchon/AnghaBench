
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * find_ref_storage_backend (char const*) ;

int ref_storage_backend_exists(const char *name)
{
 return find_ref_storage_backend(name) != ((void*)0);
}
