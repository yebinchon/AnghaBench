
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct transport {int url; TYPE_1__* remote; struct helper_data* data; } ;
struct strbuf {char* buf; } ;
struct TYPE_7__ {int nr; } ;
struct helper_data {char const* name; int fetch; int option; int push; int import; int bidi_import; int export; int check_connectivity; int connect; int stateless_connect; int signed_tags; int no_private_update; struct child_process* helper; TYPE_2__ rs; void* import_marks; void* export_marks; int out; scalar_t__ no_disconnect_req; } ;
struct TYPE_8__ {int * argv; } ;
struct child_process {int in; int out; int silent_exec_failure; TYPE_4__ args; int trace2_child_class; int env_array; scalar_t__ git_cmd; scalar_t__ err; } ;
struct TYPE_6__ {int name; } ;


 scalar_t__ ENOENT ;
 int GIT_DIR_ENVIRONMENT ;
 int REFSPEC_FETCH ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int argv_array_push (TYPE_4__*,int ) ;
 int argv_array_pushf (TYPE_4__*,char*,char const*,...) ;
 int child_process_init (struct child_process*) ;
 scalar_t__ debug ;
 int die (int ,char const*) ;
 int die_errno (int ) ;
 int dup (int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int get_git_dir () ;
 scalar_t__ have_git_dir () ;
 scalar_t__ recvline (struct helper_data*,struct strbuf*) ;
 int refspec_append (TYPE_2__*,char const*) ;
 int refspec_init (TYPE_2__*,int ) ;
 int remove_ext_force (int ) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int standard_options (struct transport*) ;
 int start_command (struct child_process*) ;
 scalar_t__ starts_with (char const*,char*) ;
 int stderr ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,char*) ;
 int warning (int ) ;
 int write_constant (int,char*) ;
 int xfdopen (int,char*) ;
 struct child_process* xmalloc (int) ;
 void* xstrdup (char const*) ;

__attribute__((used)) static struct child_process *get_helper(struct transport *transport)
{
 struct helper_data *data = transport->data;
 struct strbuf buf = STRBUF_INIT;
 struct child_process *helper;
 int duped;
 int code;

 if (data->helper)
  return data->helper;

 helper = xmalloc(sizeof(*helper));
 child_process_init(helper);
 helper->in = -1;
 helper->out = -1;
 helper->err = 0;
 argv_array_pushf(&helper->args, "git-remote-%s", data->name);
 argv_array_push(&helper->args, transport->remote->name);
 argv_array_push(&helper->args, remove_ext_force(transport->url));
 helper->git_cmd = 0;
 helper->silent_exec_failure = 1;

 if (have_git_dir())
  argv_array_pushf(&helper->env_array, "%s=%s",
     GIT_DIR_ENVIRONMENT, get_git_dir());

 helper->trace2_child_class = helper->args.argv[0];

 code = start_command(helper);
 if (code < 0 && errno == ENOENT)
  die(_("unable to find remote helper for '%s'"), data->name);
 else if (code != 0)
  exit(code);

 data->helper = helper;
 data->no_disconnect_req = 0;
 refspec_init(&data->rs, REFSPEC_FETCH);







 duped = dup(helper->out);
 if (duped < 0)
  die_errno(_("can't dup helper output fd"));
 data->out = xfdopen(duped, "r");

 write_constant(helper->in, "capabilities\n");

 while (1) {
  const char *capname, *arg;
  int mandatory = 0;
  if (recvline(data, &buf))
   exit(128);

  if (!*buf.buf)
   break;

  if (*buf.buf == '*') {
   capname = buf.buf + 1;
   mandatory = 1;
  } else
   capname = buf.buf;

  if (debug)
   fprintf(stderr, "Debug: Got cap %s\n", capname);
  if (!strcmp(capname, "fetch"))
   data->fetch = 1;
  else if (!strcmp(capname, "option"))
   data->option = 1;
  else if (!strcmp(capname, "push"))
   data->push = 1;
  else if (!strcmp(capname, "import"))
   data->import = 1;
  else if (!strcmp(capname, "bidi-import"))
   data->bidi_import = 1;
  else if (!strcmp(capname, "export"))
   data->export = 1;
  else if (!strcmp(capname, "check-connectivity"))
   data->check_connectivity = 1;
  else if (skip_prefix(capname, "refspec ", &arg)) {
   refspec_append(&data->rs, arg);
  } else if (!strcmp(capname, "connect")) {
   data->connect = 1;
  } else if (!strcmp(capname, "stateless-connect")) {
   data->stateless_connect = 1;
  } else if (!strcmp(capname, "signed-tags")) {
   data->signed_tags = 1;
  } else if (skip_prefix(capname, "export-marks ", &arg)) {
   data->export_marks = xstrdup(arg);
  } else if (skip_prefix(capname, "import-marks ", &arg)) {
   data->import_marks = xstrdup(arg);
  } else if (starts_with(capname, "no-private-update")) {
   data->no_private_update = 1;
  } else if (mandatory) {
   die(_("unknown mandatory capability %s; this remote "
         "helper probably needs newer version of Git"),
       capname);
  }
 }
 if (!data->rs.nr && (data->import || data->bidi_import || data->export)) {
  warning(_("this remote helper should implement refspec capability"));
 }
 strbuf_release(&buf);
 if (debug)
  fprintf(stderr, "Debug: Capabilities complete.\n");
 standard_options(transport);
 return data->helper;
}
