
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iovec_vector_t ;
typedef int h2o_mem_pool_t ;


 void* append (int *,int *,char const*,size_t) ;
 char* encode_length_of_pair (char*,size_t) ;

__attribute__((used)) static void *append_pair(h2o_mem_pool_t *pool, iovec_vector_t *blocks, const char *name, size_t namelen, const char *value,
                         size_t valuelen)
{
    char lenbuf[8];
    void *name_buf;

    append(pool, blocks, lenbuf, encode_length_of_pair(encode_length_of_pair(lenbuf, namelen), valuelen) - lenbuf);
    name_buf = append(pool, blocks, name, namelen);
    if (valuelen != 0)
        append(pool, blocks, value, valuelen);

    return name_buf;
}
