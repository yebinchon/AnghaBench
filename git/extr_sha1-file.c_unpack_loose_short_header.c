
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* next_in; unsigned long avail_in; unsigned long avail_out; void* next_out; } ;
typedef TYPE_1__ git_zstream ;


 int git_inflate (TYPE_1__*,int ) ;
 int git_inflate_init (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int unpack_loose_short_header(git_zstream *stream,
         unsigned char *map, unsigned long mapsize,
         void *buffer, unsigned long bufsiz)
{

 memset(stream, 0, sizeof(*stream));
 stream->next_in = map;
 stream->avail_in = mapsize;
 stream->next_out = buffer;
 stream->avail_out = bufsiz;

 git_inflate_init(stream);
 return git_inflate(stream, 0);
}
