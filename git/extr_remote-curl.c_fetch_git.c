
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct strbuf {scalar_t__ len; int buf; } ;
struct rpc_state {char* service_name; int gzip_request; } ;
struct ref {int * name; int old_oid; } ;
struct discovery {int dummy; } ;
struct argv_array {int argv; } ;
typedef int rpc ;
struct TYPE_6__ {int nr; TYPE_1__* items; } ;
struct TYPE_8__ {int verbosity; scalar_t__ filter; scalar_t__ no_dependents; scalar_t__ from_promisor; scalar_t__ depth; scalar_t__ deepen_relative; TYPE_2__ deepen_not; scalar_t__ deepen_since; int progress; scalar_t__ update_shallow; scalar_t__ cloning; scalar_t__ check_self_contained_and_connected; scalar_t__ thin; scalar_t__ followtags; } ;
struct TYPE_7__ {char* buf; } ;
struct TYPE_5__ {scalar_t__ string; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,char*) ;
 int argv_array_pushf (struct argv_array*,char*,scalar_t__) ;
 int argv_array_pushl (struct argv_array*,char*,char*,char*,...) ;
 int die (int ) ;
 int memset (struct rpc_state*,int ,int) ;
 int oid_to_hex (int *) ;
 TYPE_4__ options ;
 int packet_buf_flush (struct strbuf*) ;
 int packet_buf_write (struct strbuf*,char*,int ,int *) ;
 int rpc_service (struct rpc_state*,struct discovery*,int ,struct strbuf*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 TYPE_3__ url ;
 int write_or_die (int,int ,scalar_t__) ;

__attribute__((used)) static int fetch_git(struct discovery *heads,
 int nr_heads, struct ref **to_fetch)
{
 struct rpc_state rpc;
 struct strbuf preamble = STRBUF_INIT;
 int i, err;
 struct argv_array args = ARGV_ARRAY_INIT;
 struct strbuf rpc_result = STRBUF_INIT;

 argv_array_pushl(&args, "fetch-pack", "--stateless-rpc",
    "--stdin", "--lock-pack", ((void*)0));
 if (options.followtags)
  argv_array_push(&args, "--include-tag");
 if (options.thin)
  argv_array_push(&args, "--thin");
 if (options.verbosity >= 3)
  argv_array_pushl(&args, "-v", "-v", ((void*)0));
 if (options.check_self_contained_and_connected)
  argv_array_push(&args, "--check-self-contained-and-connected");
 if (options.cloning)
  argv_array_push(&args, "--cloning");
 if (options.update_shallow)
  argv_array_push(&args, "--update-shallow");
 if (!options.progress)
  argv_array_push(&args, "--no-progress");
 if (options.depth)
  argv_array_pushf(&args, "--depth=%lu", options.depth);
 if (options.deepen_since)
  argv_array_pushf(&args, "--shallow-since=%s", options.deepen_since);
 for (i = 0; i < options.deepen_not.nr; i++)
  argv_array_pushf(&args, "--shallow-exclude=%s",
     options.deepen_not.items[i].string);
 if (options.deepen_relative && options.depth)
  argv_array_push(&args, "--deepen-relative");
 if (options.from_promisor)
  argv_array_push(&args, "--from-promisor");
 if (options.no_dependents)
  argv_array_push(&args, "--no-dependents");
 if (options.filter)
  argv_array_pushf(&args, "--filter=%s", options.filter);
 argv_array_push(&args, url.buf);

 for (i = 0; i < nr_heads; i++) {
  struct ref *ref = to_fetch[i];
  if (!*ref->name)
   die(_("cannot fetch by sha1 over smart http"));
  packet_buf_write(&preamble, "%s %s\n",
     oid_to_hex(&ref->old_oid), ref->name);
 }
 packet_buf_flush(&preamble);

 memset(&rpc, 0, sizeof(rpc));
 rpc.service_name = "git-upload-pack",
 rpc.gzip_request = 1;

 err = rpc_service(&rpc, heads, args.argv, &preamble, &rpc_result);
 if (rpc_result.len)
  write_or_die(1, rpc_result.buf, rpc_result.len);
 strbuf_release(&rpc_result);
 strbuf_release(&preamble);
 argv_array_clear(&args);
 return err;
}
