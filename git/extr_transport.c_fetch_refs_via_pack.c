
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transport {int verbose; int pack_lockfile; struct ref* remote_refs; int server_options; int stateless_rpc; int cloning; int progress; struct git_transport_data* data; } ;
struct ref {int exact_oid; } ;
struct TYPE_2__ {int connectivity_checked; int self_contained_and_connected; int negotiation_tips; int filter_options; int no_dependents; int from_promisor; int update_shallow; int check_self_contained_and_connected; int deepen_relative; int deepen_not; int deepen_since; int depth; int followtags; int thin; int keep; int uploadpack; } ;
struct git_transport_data {int version; TYPE_1__ options; scalar_t__ got_remote_heads; int * conn; int * fd; int shallow; } ;
struct fetch_pack_args {int lock_pack; int verbose; int quiet; int no_progress; int connectivity_checked; int self_contained_and_connected; int negotiation_tips; int server_options; int stateless_rpc; int filter_options; int no_dependents; int from_promisor; int update_shallow; int cloning; int check_self_contained_and_connected; int deepen_relative; int deepen_not; int deepen_since; int depth; int include_tag; int use_thin_pack; int keep_pack; int uploadpack; } ;
typedef int args ;


 int BUG (char*) ;
 int close (int ) ;
 int die_if_server_options (struct transport*) ;
 struct ref* fetch_pack (struct fetch_pack_args*,int *,struct ref*,struct ref**,int,int *,int *,int) ;
 scalar_t__ finish_connect (int *) ;
 int free_refs (struct ref*) ;
 struct ref* handshake (struct transport*,int ,int *,int) ;
 int memset (struct fetch_pack_args*,int ,int) ;




 scalar_t__ report_unmatched_refs (struct ref**,int) ;

__attribute__((used)) static int fetch_refs_via_pack(struct transport *transport,
          int nr_heads, struct ref **to_fetch)
{
 int ret = 0;
 struct git_transport_data *data = transport->data;
 struct ref *refs = ((void*)0);
 struct fetch_pack_args args;
 struct ref *refs_tmp = ((void*)0);

 memset(&args, 0, sizeof(args));
 args.uploadpack = data->options.uploadpack;
 args.keep_pack = data->options.keep;
 args.lock_pack = 1;
 args.use_thin_pack = data->options.thin;
 args.include_tag = data->options.followtags;
 args.verbose = (transport->verbose > 1);
 args.quiet = (transport->verbose < 0);
 args.no_progress = !transport->progress;
 args.depth = data->options.depth;
 args.deepen_since = data->options.deepen_since;
 args.deepen_not = data->options.deepen_not;
 args.deepen_relative = data->options.deepen_relative;
 args.check_self_contained_and_connected =
  data->options.check_self_contained_and_connected;
 args.cloning = transport->cloning;
 args.update_shallow = data->options.update_shallow;
 args.from_promisor = data->options.from_promisor;
 args.no_dependents = data->options.no_dependents;
 args.filter_options = data->options.filter_options;
 args.stateless_rpc = transport->stateless_rpc;
 args.server_options = transport->server_options;
 args.negotiation_tips = data->options.negotiation_tips;

 if (!data->got_remote_heads) {
  int i;
  int must_list_refs = 0;
  for (i = 0; i < nr_heads; i++) {
   if (!to_fetch[i]->exact_oid) {
    must_list_refs = 1;
    break;
   }
  }
  refs_tmp = handshake(transport, 0, ((void*)0), must_list_refs);
 }

 switch (data->version) {
 case 128:
  refs = fetch_pack(&args, data->fd,
      refs_tmp ? refs_tmp : transport->remote_refs,
      to_fetch, nr_heads, &data->shallow,
      &transport->pack_lockfile, data->version);
  break;
 case 129:
 case 130:
  die_if_server_options(transport);
  refs = fetch_pack(&args, data->fd,
      refs_tmp ? refs_tmp : transport->remote_refs,
      to_fetch, nr_heads, &data->shallow,
      &transport->pack_lockfile, data->version);
  break;
 case 131:
  BUG("unknown protocol version");
 }

 close(data->fd[0]);
 close(data->fd[1]);
 if (finish_connect(data->conn))
  ret = -1;
 data->conn = ((void*)0);
 data->got_remote_heads = 0;
 data->options.self_contained_and_connected =
  args.self_contained_and_connected;
 data->options.connectivity_checked = args.connectivity_checked;

 if (refs == ((void*)0))
  ret = -1;
 if (report_unmatched_refs(to_fetch, nr_heads))
  ret = -1;

 free_refs(refs_tmp);
 free_refs(refs);
 return ret;
}
