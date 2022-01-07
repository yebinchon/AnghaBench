
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_page (unsigned long) ;

__attribute__((used)) static void hypfs_sprp_free(const void *data)
{
 free_page((unsigned long) data);
}
