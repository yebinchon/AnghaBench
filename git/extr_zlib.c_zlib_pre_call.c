
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* avail_out; void* avail_in; int total_out; int total_in; int next_out; int next_in; } ;
struct TYPE_5__ {int avail_out; TYPE_1__ z; int avail_in; int total_out; int total_in; int next_out; int next_in; } ;
typedef TYPE_2__ git_zstream ;


 void* zlib_buf_cap (int ) ;

__attribute__((used)) static void zlib_pre_call(git_zstream *s)
{
 s->z.next_in = s->next_in;
 s->z.next_out = s->next_out;
 s->z.total_in = s->total_in;
 s->z.total_out = s->total_out;
 s->z.avail_in = zlib_buf_cap(s->avail_in);
 s->z.avail_out = zlib_buf_cap(s->avail_out);
}
