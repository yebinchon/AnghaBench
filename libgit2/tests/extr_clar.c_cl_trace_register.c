
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cl_trace_cb ;
struct TYPE_2__ {void* trace_payload; int * pfn_trace_cb; } ;


 TYPE_1__ _clar ;

void cl_trace_register(cl_trace_cb *cb, void *payload)
{
 _clar.pfn_trace_cb = cb;
 _clar.trace_payload = payload;
}
