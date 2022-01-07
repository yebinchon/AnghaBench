
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_1__ uv_handle_t ;
struct TYPE_6__ {int pongs; } ;
typedef TYPE_2__ pinger_t ;


 int TIME ;
 int completed_pingers ;
 int fflush (int ) ;
 int fprintf (int ,char*,int) ;
 int free (TYPE_2__*) ;
 int stderr ;

__attribute__((used)) static void pinger_close_cb(uv_handle_t* handle) {
  pinger_t* pinger;

  pinger = (pinger_t*)handle->data;
  fprintf(stderr, "ping_pongs: %d roundtrips/s\n", (1000 * pinger->pongs) / TIME);
  fflush(stderr);

  free(pinger);

  completed_pingers++;
}
