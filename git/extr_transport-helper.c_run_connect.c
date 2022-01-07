
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {struct helper_data* data; } ;
struct strbuf {int buf; } ;
struct helper_data {int no_disconnect_req; } ;
struct child_process {int out; } ;
typedef int FILE ;


 int _ (char*) ;
 int _IONBF ;
 scalar_t__ debug ;
 int die (int ,int ) ;
 int die_errno (int ) ;
 int dup (int ) ;
 int exit (int) ;
 int fclose (int *) ;
 int fprintf (int ,char*) ;
 struct child_process* get_helper (struct transport*) ;
 scalar_t__ recvline_fh (int *,struct strbuf*) ;
 int sendline (struct helper_data*,struct strbuf*) ;
 int setvbuf (int *,int *,int ,int ) ;
 int stderr ;
 int strcmp (int ,char*) ;
 int * xfdopen (int,char*) ;

__attribute__((used)) static int run_connect(struct transport *transport, struct strbuf *cmdbuf)
{
 struct helper_data *data = transport->data;
 int ret = 0;
 int duped;
 FILE *input;
 struct child_process *helper;

 helper = get_helper(transport);







 duped = dup(helper->out);
 if (duped < 0)
  die_errno(_("can't dup helper output fd"));
 input = xfdopen(duped, "r");
 setvbuf(input, ((void*)0), _IONBF, 0);

 sendline(data, cmdbuf);
 if (recvline_fh(input, cmdbuf))
  exit(128);

 if (!strcmp(cmdbuf->buf, "")) {
  data->no_disconnect_req = 1;
  if (debug)
   fprintf(stderr, "Debug: Smart transport connection "
    "ready.\n");
  ret = 1;
 } else if (!strcmp(cmdbuf->buf, "fallback")) {
  if (debug)
   fprintf(stderr, "Debug: Falling back to dumb "
    "transport.\n");
 } else {
  die(_("unknown response to connect: %s"),
      cmdbuf->buf);
 }

 fclose(input);
 return ret;
}
