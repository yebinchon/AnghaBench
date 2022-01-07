
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct st_stream_data_t {int * outfp; } ;
struct TYPE_6__ {struct st_stream_data_t* data; } ;
typedef TYPE_1__ quicly_stream_t ;
typedef int quicly_conn_t ;
struct TYPE_7__ {char* path; scalar_t__ to_file; } ;


 int INT64_MAX ;
 int assert (int) ;
 int enqueue_requests_at ;
 int errno ;
 int exit (int) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,char*) ;
 int quicly_open_stream (int *,TYPE_1__**,int ) ;
 int quicly_streambuf_egress_shutdown (TYPE_1__*) ;
 TYPE_3__* reqs ;
 int send_str (TYPE_1__*,char*) ;
 int sprintf (char*,char*,char*) ;
 int stderr ;
 char* strerror (int ) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void enqueue_requests(quicly_conn_t *conn)
{
    size_t i;
    int ret;

    for (i = 0; reqs[i].path != ((void*)0); ++i) {
        char req[1024], destfile[1024];
        quicly_stream_t *stream;
        ret = quicly_open_stream(conn, &stream, 0);
        assert(ret == 0);
        sprintf(req, "GET %s\r\n", reqs[i].path);
        send_str(stream, req);
        quicly_streambuf_egress_shutdown(stream);

        if (reqs[i].to_file) {
            struct st_stream_data_t *stream_data = stream->data;
            sprintf(destfile, "%s.downloaded", strrchr(reqs[i].path, '/') + 1);
            stream_data->outfp = fopen(destfile, "w");
            if (stream_data->outfp == ((void*)0)) {
                fprintf(stderr, "failed to open destination file:%s:%s\n", reqs[i].path, strerror(errno));
                exit(1);
            }
        }
    }
    enqueue_requests_at = INT64_MAX;
}
