
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool_entry_t {int sockinfo; } ;


 int free (struct pool_entry_t*) ;
 int h2o_socket_dispose_export (int *) ;

__attribute__((used)) static void destroy_detached(struct pool_entry_t *entry)
{
    h2o_socket_dispose_export(&entry->sockinfo);
    free(entry);
}
