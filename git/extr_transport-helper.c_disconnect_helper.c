
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct transport {struct helper_data* data; } ;
struct helper_data {TYPE_1__* helper; int out; int no_disconnect_req; } ;
struct TYPE_3__ {int out; int in; } ;


 int FREE_AND_NULL (TYPE_1__*) ;
 int SIGPIPE ;
 int SIG_IGN ;
 int close (int ) ;
 scalar_t__ debug ;
 int fclose (int ) ;
 int finish_command (TYPE_1__*) ;
 int fprintf (int ,char*) ;
 int sigchain_pop (int ) ;
 int sigchain_push (int ,int ) ;
 int stderr ;
 int xwrite (int ,char*,int) ;

__attribute__((used)) static int disconnect_helper(struct transport *transport)
{
 struct helper_data *data = transport->data;
 int res = 0;

 if (data->helper) {
  if (debug)
   fprintf(stderr, "Debug: Disconnecting.\n");
  if (!data->no_disconnect_req) {






   sigchain_push(SIGPIPE, SIG_IGN);
   xwrite(data->helper->in, "\n", 1);
   sigchain_pop(SIGPIPE);
  }
  close(data->helper->in);
  close(data->helper->out);
  fclose(data->out);
  res = finish_command(data->helper);
  FREE_AND_NULL(data->helper);
 }
 return res;
}
