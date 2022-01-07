
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int num_loggers; int pool; int * error_logs; TYPE_2__** loggers; int * pathconf; int _timeout_entry; } ;
typedef TYPE_1__ h2o_req_t ;
struct TYPE_8__ {int (* log_access ) (TYPE_2__*,TYPE_1__*) ;} ;
typedef TYPE_2__ h2o_logger_t ;


 int close_generator_and_filters (TYPE_1__*) ;
 int h2o_buffer_dispose (int **) ;
 int h2o_mem_clear_pool (int *) ;
 int h2o_timer_unlink (int *) ;
 int stub1 (TYPE_2__*,TYPE_1__*) ;

void h2o_dispose_request(h2o_req_t *req)
{
    close_generator_and_filters(req);

    h2o_timer_unlink(&req->_timeout_entry);

    if (req->pathconf != ((void*)0)) {
        h2o_logger_t **logger = req->loggers, **end = logger + req->num_loggers;
        for (; logger != end; ++logger) {
            (*logger)->log_access((*logger), req);
        }
    }

    if (req->error_logs != ((void*)0))
        h2o_buffer_dispose(&req->error_logs);

    h2o_mem_clear_pool(&req->pool);
}
