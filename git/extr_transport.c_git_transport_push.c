
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transport {scalar_t__ verbose; int url; int push_options; int progress; struct git_transport_data* data; } ;
struct send_pack_args {int send_mirror; int force_update; int verbose; int quiet; int dry_run; int porcelain; int atomic; int push_cert; int url; int push_options; int progress; int use_thin_pack; } ;
struct ref {int dummy; } ;
struct TYPE_2__ {int thin; } ;
struct git_transport_data {int version; scalar_t__ got_remote_heads; int * conn; int * fd; int extra_have; TYPE_1__ options; } ;
typedef int args ;


 int BUG (char*) ;
 int SEND_PACK_PUSH_CERT_ALWAYS ;
 int SEND_PACK_PUSH_CERT_IF_ASKED ;
 int SEND_PACK_PUSH_CERT_NEVER ;
 int TRANSPORT_PUSH_ATOMIC ;
 int TRANSPORT_PUSH_CERT_ALWAYS ;
 int TRANSPORT_PUSH_CERT_IF_ASKED ;
 int TRANSPORT_PUSH_DRY_RUN ;
 int TRANSPORT_PUSH_FORCE ;
 int TRANSPORT_PUSH_MIRROR ;
 int TRANSPORT_PUSH_PORCELAIN ;
 int _ (char*) ;
 int close (int ) ;
 int die (int ) ;
 int finish_connect (int *) ;
 int get_refs_via_connect (struct transport*,int,int *) ;
 int memset (struct send_pack_args*,int ,int) ;




 int send_pack (struct send_pack_args*,int *,int *,struct ref*,int *) ;
 scalar_t__ transport_color_config () ;

__attribute__((used)) static int git_transport_push(struct transport *transport, struct ref *remote_refs, int flags)
{
 struct git_transport_data *data = transport->data;
 struct send_pack_args args;
 int ret = 0;

 if (transport_color_config() < 0)
  return -1;

 if (!data->got_remote_heads)
  get_refs_via_connect(transport, 1, ((void*)0));

 memset(&args, 0, sizeof(args));
 args.send_mirror = !!(flags & TRANSPORT_PUSH_MIRROR);
 args.force_update = !!(flags & TRANSPORT_PUSH_FORCE);
 args.use_thin_pack = data->options.thin;
 args.verbose = (transport->verbose > 0);
 args.quiet = (transport->verbose < 0);
 args.progress = transport->progress;
 args.dry_run = !!(flags & TRANSPORT_PUSH_DRY_RUN);
 args.porcelain = !!(flags & TRANSPORT_PUSH_PORCELAIN);
 args.atomic = !!(flags & TRANSPORT_PUSH_ATOMIC);
 args.push_options = transport->push_options;
 args.url = transport->url;

 if (flags & TRANSPORT_PUSH_CERT_ALWAYS)
  args.push_cert = SEND_PACK_PUSH_CERT_ALWAYS;
 else if (flags & TRANSPORT_PUSH_CERT_IF_ASKED)
  args.push_cert = SEND_PACK_PUSH_CERT_IF_ASKED;
 else
  args.push_cert = SEND_PACK_PUSH_CERT_NEVER;

 switch (data->version) {
 case 128:
  die(_("support for protocol v2 not implemented yet"));
  break;
 case 129:
 case 130:
  ret = send_pack(&args, data->fd, data->conn, remote_refs,
    &data->extra_have);
  break;
 case 131:
  BUG("unknown protocol version");
 }

 close(data->fd[1]);
 close(data->fd[0]);
 ret |= finish_connect(data->conn);
 data->conn = ((void*)0);
 data->got_remote_heads = 0;

 return ret;
}
