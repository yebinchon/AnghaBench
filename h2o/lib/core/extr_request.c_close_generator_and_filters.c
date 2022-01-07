
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* _ostr_top; TYPE_4__* _generator; } ;
typedef TYPE_1__ h2o_req_t ;
struct TYPE_9__ {int (* stop ) (TYPE_4__*,TYPE_1__*) ;} ;
struct TYPE_8__ {struct TYPE_8__* next; int (* stop ) (TYPE_2__*,TYPE_1__*) ;} ;


 int stub1 (TYPE_4__*,TYPE_1__*) ;
 int stub2 (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void close_generator_and_filters(h2o_req_t *req)
{

    if (req->_generator != ((void*)0)) {

        if (req->_generator->stop != ((void*)0))
            req->_generator->stop(req->_generator, req);
        req->_generator = ((void*)0);
    }

    while (req->_ostr_top->next != ((void*)0)) {
        if (req->_ostr_top->stop != ((void*)0))
            req->_ostr_top->stop(req->_ostr_top, req);
        req->_ostr_top = req->_ostr_top->next;
    }
}
