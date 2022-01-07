
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ avail_in; unsigned char* next_in; scalar_t__ avail_out; unsigned char* next_out; void* opaque; void* zfree; void* zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef int FILE ;


 int CHUNK ;

 int Z_ERRNO ;


 int Z_NO_FLUSH ;
 void* Z_NULL ;
 int Z_OK ;
 int Z_STREAM_END ;
 int Z_STREAM_ERROR ;
 int assert (int) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fread (unsigned char*,int,int,int *) ;
 int fwrite (unsigned char*,size_t,int,int *) ;
 int inflate (TYPE_1__*,int ) ;
 int inflateEnd (TYPE_1__*) ;
 int inflateInit (TYPE_1__*) ;
 size_t special_min (size_t,int) ;

__attribute__((used)) static int inf(FILE *source, FILE *dest, size_t limit, size_t skip)
{
    int ret;
    size_t have;
    z_stream strm;
    unsigned char in[CHUNK];
    unsigned char out[CHUNK];


    strm.zalloc = Z_NULL;
    strm.zfree = Z_NULL;
    strm.opaque = Z_NULL;
    strm.avail_in = 0;
    strm.next_in = Z_NULL;
    ret = inflateInit(&strm);
    if (ret != Z_OK)
        return ret;


    do {
        strm.avail_in = fread(in, 1, CHUNK, source);
        if (ferror(source)) {
            (void)inflateEnd(&strm);
            return Z_ERRNO;
        }
        if (strm.avail_in == 0)
            break;
        strm.next_in = in;


        do {
            strm.avail_out = CHUNK;
            strm.next_out = out;
            ret = inflate(&strm, Z_NO_FLUSH);
            assert(ret != Z_STREAM_ERROR);
            switch (ret) {
            case 128:
                ret = 130;
            case 130:
            case 129:
                (void)inflateEnd(&strm);
                return ret;
            }
            have = special_min(limit, CHUNK - strm.avail_out) - skip;
            if (fwrite(&out[skip], have, 1, dest) != 1 || ferror(dest)) {
                (void)inflateEnd(&strm);
                return Z_ERRNO;
            }
     skip = 0;
     limit -= have;
        } while (strm.avail_out == 0 && limit > 0);


    } while (ret != Z_STREAM_END && limit > 0);


    (void)inflateEnd(&strm);
    return (limit == 0 ? Z_OK : (ret == Z_STREAM_END ? Z_OK : 130));
}
