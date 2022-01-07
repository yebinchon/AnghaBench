
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zs ;
struct TYPE_8__ {unsigned int avail_out; unsigned int avail_in; void* next_in; void* next_out; int zfree; int zalloc; } ;
typedef TYPE_1__ z_stream ;
struct TYPE_9__ {scalar_t__ len; scalar_t__ raw; } ;
typedef TYPE_2__ h2o_sendvec_t ;
typedef int decbuf ;


 int WINDOW_BITS ;
 int Z_NO_FLUSH ;
 int Z_STREAM_END ;
 int alloc_cb ;
 int free_cb ;
 int inflate (TYPE_1__*,int ) ;
 int inflateEnd (TYPE_1__*) ;
 int inflateInit2 (TYPE_1__*,int ) ;
 scalar_t__ memcmp (char*,char const*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int) ;

__attribute__((used)) static void check_result(h2o_sendvec_t *vecs, size_t num_vecs, const char *expected, size_t expectedlen)
{
    z_stream zs;
    char decbuf[expectedlen + 1];

    memset(&zs, 0, sizeof(zs));
    zs.zalloc = alloc_cb;
    zs.zfree = free_cb;
    zs.next_out = (void *)decbuf;
    zs.avail_out = (unsigned)sizeof(decbuf);

    inflateInit2(&zs, WINDOW_BITS);

    int inflate_ret = -1;
    size_t i;
    for (i = 0; i != num_vecs; ++i) {
        zs.next_in = (void *)vecs[i].raw;
        zs.avail_in = (unsigned)vecs[i].len;
        inflate_ret = inflate(&zs, Z_NO_FLUSH);
        if (zs.avail_out == 0) {
            ok(0);
            return;
        }
        if (zs.avail_in != 0) {
            ok(0);
            return;
        }
    }

    ok(inflate_ret == Z_STREAM_END);
    inflateEnd(&zs);

    ok(zs.avail_out == sizeof(decbuf) - expectedlen);
    ok(memcmp(decbuf, expected, expectedlen) == 0);
}
