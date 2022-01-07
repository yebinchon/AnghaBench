
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_collect_req_status_cbdata_t {TYPE_2__* buffer; int logconf; } ;
typedef int h2o_req_t ;
typedef int buf ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ bytes; } ;
struct TYPE_3__ {int * base; } ;


 int assert (int) ;
 int free (char*) ;
 TYPE_1__ h2o_buffer_try_reserve (TYPE_2__**,size_t) ;
 char* h2o_log_request (int ,int *,size_t*,char*) ;
 int memcpy (scalar_t__,char*,size_t) ;

__attribute__((used)) static int collect_req_status(h2o_req_t *req, void *_cbdata)
{
    struct st_collect_req_status_cbdata_t *cbdata = _cbdata;


    char buf[4096];
    size_t len = sizeof(buf);
    char *logline = h2o_log_request(cbdata->logconf, req, &len, buf);
    assert(len != 0);
    --len;


    if ((h2o_buffer_try_reserve(&cbdata->buffer, len + 3)).base == ((void*)0)) {
        if (logline != buf)
            free(logline);
        return -1;
    }
    memcpy(cbdata->buffer->bytes + cbdata->buffer->size, logline, len);
    cbdata->buffer->size += len;

    if (logline != buf)
        free(logline);

    return 0;
}
