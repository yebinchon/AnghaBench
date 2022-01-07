
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_1__ uv_handle_t ;
struct TYPE_6__ {scalar_t__ pongs; } ;
typedef TYPE_2__ pinger_t ;


 int ASSERT (int) ;
 scalar_t__ NUM_PINGS ;
 int completed_pingers ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void pinger_on_close(uv_handle_t* handle) {
  pinger_t* pinger = (pinger_t*)handle->data;

  ASSERT(NUM_PINGS == pinger->pongs);

  free(pinger);

  completed_pingers++;
}
