
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rp_generator_t {TYPE_5__* client; TYPE_4__* src_req; } ;
struct TYPE_7__ {int body; int header; int total; } ;
struct TYPE_10__ {TYPE_2__ bytes_written; int timings; } ;
struct TYPE_6__ {int body; int header; int total; } ;
struct TYPE_8__ {TYPE_1__ bytes_written; int timestamps; } ;
struct TYPE_9__ {TYPE_3__ proxy_stats; } ;



__attribute__((used)) static void copy_stats(struct rp_generator_t *self)
{
    self->src_req->proxy_stats.timestamps = self->client->timings;
    self->src_req->proxy_stats.bytes_written.total = self->client->bytes_written.total;
    self->src_req->proxy_stats.bytes_written.header = self->client->bytes_written.header;
    self->src_req->proxy_stats.bytes_written.body = self->client->bytes_written.body;
}
