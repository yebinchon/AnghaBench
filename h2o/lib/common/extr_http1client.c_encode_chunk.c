
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct st_h2o_http1client_t {char* _chunk_len_str; } ;
struct TYPE_5__ {int len; char* base; } ;
typedef TYPE_1__ h2o_iovec_t ;


 TYPE_1__ h2o_iovec_init (char*,int) ;
 int snprintf (char*,int,char*,int) ;

size_t encode_chunk(struct st_h2o_http1client_t *client, h2o_iovec_t *bufs, h2o_iovec_t chunk, size_t *bytes)
{
    *bytes = 0;

    size_t i = 0;
    bufs[i].len = snprintf(client->_chunk_len_str, sizeof(client->_chunk_len_str), "%zx\r\n", chunk.len);
    *bytes += bufs[i].len;
    bufs[i++].base = client->_chunk_len_str;

    if (chunk.base != ((void*)0)) {
        bufs[i++] = h2o_iovec_init(chunk.base, chunk.len);
        *bytes += chunk.len;
    }
    bufs[i++] = h2o_iovec_init("\r\n", 2);
    *bytes += 2;

    return i;
}
