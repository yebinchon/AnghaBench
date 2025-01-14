
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int h2o_cache_t ;


 int H2O_CACHE_FLAG_MULTITHREADED ;
 int * h2o_cache_create (int ,size_t,int ,int ) ;
 int h2o_socket_ssl_destroy_session_cache_entry ;

__attribute__((used)) static h2o_cache_t *create_ssl_session_cache(size_t capacity, uint64_t duration)
{
    return h2o_cache_create(H2O_CACHE_FLAG_MULTITHREADED, capacity, duration, h2o_socket_ssl_destroy_session_cache_entry);
}
