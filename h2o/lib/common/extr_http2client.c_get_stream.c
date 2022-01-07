
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct st_h2o_http2client_stream_t {int dummy; } ;
struct st_h2o_http2client_conn_t {int streams; } ;
typedef scalar_t__ khiter_t ;


 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get (int ,int ,int ) ;
 scalar_t__ kh_val (int ,scalar_t__) ;
 int stream ;

__attribute__((used)) static struct st_h2o_http2client_stream_t *get_stream(struct st_h2o_http2client_conn_t *conn, uint32_t stream_id)
{
    khiter_t iter = kh_get(stream, conn->streams, stream_id);
    if (iter != kh_end(conn->streams))
        return (struct st_h2o_http2client_stream_t *)kh_val(conn->streams, iter);
    return ((void*)0);
}
