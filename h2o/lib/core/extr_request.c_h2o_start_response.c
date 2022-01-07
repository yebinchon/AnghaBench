
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int _ostr_top; TYPE_2__* prefilters; int * _generator; } ;
typedef TYPE_1__ h2o_req_t ;
typedef int h2o_generator_t ;
struct TYPE_8__ {int (* on_setup_ostream ) (TYPE_2__*,TYPE_1__*,int *) ;} ;


 int assert (int ) ;
 int h2o_setup_next_ostream (TYPE_1__*,int *) ;
 int retain_original_response (TYPE_1__*) ;
 int stub1 (TYPE_2__*,TYPE_1__*,int *) ;

void h2o_start_response(h2o_req_t *req, h2o_generator_t *generator)
{
    retain_original_response(req);


    assert(req->_generator == ((void*)0));
    req->_generator = generator;


    if (req->prefilters != ((void*)0)) {
        req->prefilters->on_setup_ostream(req->prefilters, req, &req->_ostr_top);
    } else {
        h2o_setup_next_ostream(req, &req->_ostr_top);
    }
}
