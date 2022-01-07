
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct my_sm_struct {int dummy; } ;
typedef TYPE_1__* sm_t ;
typedef TYPE_2__* my_sm_t ;
typedef int WSADATA ;
struct TYPE_11__ {int port; } ;
struct TYPE_10__ {scalar_t__ (* select ) (TYPE_1__*,int) ;int (* cleanup ) (TYPE_1__*) ;int (* add_fd ) (TYPE_1__*,int,int *,TYPE_2__*,int) ;int on_close; int on_recv; int on_accept; } ;


 int MAKEWORD (int,int) ;
 int SIGINT ;
 int SIGTERM ;
 int WSACleanup () ;
 int WSAStartup (int ,int *) ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int free (TYPE_2__*) ;
 int malloc (int) ;
 int on_accept ;
 int on_close ;
 int on_recv ;
 int on_signal ;
 int quit_flag ;
 int signal (int ,int ) ;
 int sm_free (TYPE_1__*) ;
 int sm_listen (int) ;
 TYPE_1__* sm_new (int) ;
 int stderr ;
 int stub1 (TYPE_1__*,int,int *,TYPE_2__*,int) ;
 scalar_t__ stub2 (TYPE_1__*,int) ;
 int stub3 (TYPE_1__*) ;

int main(int argc, char** argv) {
  signal(SIGINT, on_signal);
  signal(SIGTERM, on_signal);
  int port = 8080;

  int s_fd = sm_listen(port);
  if (s_fd < 0) {
    return -1;
  }

  sm_t sm = sm_new(4096);
  sm->on_accept = on_accept;
  sm->on_recv = on_recv;
  sm->on_close = on_close;

  my_sm_t my_sm = (my_sm_t)malloc(sizeof(struct my_sm_struct));
  my_sm->port = port;


  sm->add_fd(sm, s_fd, ((void*)0), my_sm, 1);

  int ret = 0;
  while (!quit_flag) {
    if (sm->select(sm, 2) < 0) {
      ret = -1;
      break;
    }
  }
  sm->cleanup(sm);
  free(my_sm);
  sm_free(sm);



  return ret;
}
