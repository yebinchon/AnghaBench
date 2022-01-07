
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_24__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_28__ {char* scalar; } ;
struct TYPE_30__ {int type; TYPE_3__ data; } ;
typedef TYPE_5__ yoml_t ;
struct sockaddr_un {char* sun_path; int sun_family; } ;
typedef void sockaddr ;
struct TYPE_27__ {unsigned int send_retry; TYPE_6__* ctx; } ;
struct listener_config_t {int proxy_protocol; int * hosts; TYPE_2__ quic; } ;
struct addrinfo {void* ai_addr; int ai_addrlen; int ai_family; int ai_protocol; int ai_socktype; struct addrinfo* ai_next; } ;
typedef int ssize_t ;
typedef int sa ;
struct TYPE_25__ {int max_streams_uni; } ;
struct TYPE_31__ {int * generate_resumption_token; int * stream_open; int * stream_scheduler; TYPE_1__ transport_params; int * cid_encryptor; } ;
typedef TYPE_6__ quicly_context_t ;
typedef int on ;
struct TYPE_32__ {int * hostconf; } ;
typedef TYPE_7__ h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_29__ {int * fds; } ;
struct TYPE_26__ {int run_mode; TYPE_4__ server_starter; } ;




 int AF_UNIX ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int IPV6_RECVPKTINFO ;
 int IP_PKTINFO ;

 int SOCK_DGRAM ;
 int SOCK_STREAM ;


 struct listener_config_t* add_listener (int,void*,int,int ,int) ;
 TYPE_24__ conf ;
 int errno ;
 struct listener_config_t* find_listener (void*,int,int) ;
 int find_listener_from_server_starter (void*,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int h2o_append_to_null_terminated_list (void*,int *) ;
 int h2o_configurator_errprintf (int *,TYPE_5__*,char*,...) ;
 int h2o_configurator_get_one_of (int *,TYPE_5__*,char*) ;
 scalar_t__ h2o_configurator_parse_mapping (int *,TYPE_5__*,char*,char*,TYPE_5__***,...) ;
 int h2o_fatal (char*,int ) ;
 int h2o_http3_server_on_stream_open ;
 int h2o_http3_server_stream_scheduler ;
 TYPE_6__* h2o_mem_alloc (int) ;
 scalar_t__ listener_setup_ssl (int *,TYPE_7__*,TYPE_5__*,TYPE_5__**,struct listener_config_t*,int) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int open_inet_listener (int *,TYPE_5__*,char const*,char const*,int ,int ,int ,void*,int) ;
 int open_unix_listener (int *,TYPE_5__*,struct sockaddr_un*,TYPE_5__**,TYPE_5__**) ;
 int quic_cid_encryptor ;
 int quic_resumption_token_generator ;
 TYPE_6__ quicly_spec_context ;
 struct addrinfo* resolve_address (int *,TYPE_5__*,int ,int ,char const*,char const*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 int strerror (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int on_config_listen(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    const char *hostname = ((void*)0), *servname, *type = "tcp";
    yoml_t **ssl_node = ((void*)0), **owner_node = ((void*)0), **permission_node = ((void*)0), **quic_node = ((void*)0);
    int proxy_protocol = 0;


    switch (node->type) {
    case 128:
        servname = node->data.scalar;
        break;
    case 129: {
        yoml_t **port_node, **host_node, **type_node, **proxy_protocol_node;
        if (h2o_configurator_parse_mapping(cmd, node, "port:s", "host:s,type:s,owner:s,permission:*,ssl:m,proxy-protocol:*,quic:m",
                                           &port_node, &host_node, &type_node, &owner_node, &permission_node, &ssl_node,
                                           &proxy_protocol_node, &quic_node) != 0)
            return -1;
        servname = (*port_node)->data.scalar;
        if (host_node != ((void*)0))
            hostname = (*host_node)->data.scalar;
        if (type_node != ((void*)0)) {
            type = (*type_node)->data.scalar;
        } else if (quic_node != ((void*)0)) {
            type = "quic";
        }
        if (proxy_protocol_node != ((void*)0) &&
            (proxy_protocol = (int)h2o_configurator_get_one_of(cmd, *proxy_protocol_node, "OFF,ON")) == -1)
            return -1;
    } break;
    default:
        h2o_configurator_errprintf(cmd, node, "value must be a string or a mapping (with keys: `port` and optionally `host`)");
        return -1;
    }

    if (strcmp(type, "unix") == 0) {


        struct sockaddr_un sa;
        int listener_is_new;
        struct listener_config_t *listener;


        memset(&sa, 0, sizeof(sa));
        if (strlen(servname) >= sizeof(sa.sun_path)) {
            h2o_configurator_errprintf(cmd, node, "path:%s is too long as a unix socket name", servname);
            return -1;
        }
        sa.sun_family = AF_UNIX;
        strcpy(sa.sun_path, servname);

        listener_is_new = 0;
        if ((listener = find_listener((void *)&sa, sizeof(sa), 0)) == ((void*)0)) {
            int fd = -1;
            switch (conf.run_mode) {
            case 130:
                if (conf.server_starter.fds != ((void*)0)) {
                    if ((fd = find_listener_from_server_starter((void *)&sa, SOCK_STREAM)) == -1) {
                        h2o_configurator_errprintf(cmd, node, "unix socket:%s is not being bound to the server\n", sa.sun_path);
                        return -1;
                    }
                } else {
                    if ((fd = open_unix_listener(cmd, node, &sa, owner_node, permission_node)) == -1)
                        return -1;
                }
                break;
            default:
                break;
            }
            listener = add_listener(fd, (struct sockaddr *)&sa, sizeof(sa), ctx->hostconf == ((void*)0), proxy_protocol);
            listener_is_new = 1;
        } else if (listener->proxy_protocol != proxy_protocol) {
            goto ProxyConflict;
        }
        if (listener_setup_ssl(cmd, ctx, node, ssl_node, listener, listener_is_new) != 0)
            return -1;
        if (listener->hosts != ((void*)0) && ctx->hostconf != ((void*)0))
            h2o_append_to_null_terminated_list((void *)&listener->hosts, ctx->hostconf);

    } else if (strcmp(type, "tcp") == 0) {


        struct addrinfo *res, *ai;
        if ((res = resolve_address(cmd, node, SOCK_STREAM, IPPROTO_TCP, hostname, servname)) == ((void*)0))
            return -1;
        for (ai = res; ai != ((void*)0); ai = ai->ai_next) {
            struct listener_config_t *listener = find_listener(ai->ai_addr, ai->ai_addrlen, 0);
            int listener_is_new = 0;
            if (listener == ((void*)0)) {
                int fd = -1;
                switch (conf.run_mode) {
                case 130:
                    if (conf.server_starter.fds != ((void*)0)) {
                        if ((fd = find_listener_from_server_starter(ai->ai_addr, SOCK_STREAM)) == -1) {
                            h2o_configurator_errprintf(cmd, node, "tcp socket:%s:%s is not being bound to the server\n", hostname,
                                                       servname);
                            freeaddrinfo(res);
                            return -1;
                        }
                    } else {
                        if ((fd = open_inet_listener(cmd, node, hostname, servname, ai->ai_family, ai->ai_socktype, ai->ai_protocol,
                                                     ai->ai_addr, ai->ai_addrlen)) == -1) {
                            freeaddrinfo(res);
                            return -1;
                        }
                    }
                    break;
                default:
                    break;
                }
                listener = add_listener(fd, ai->ai_addr, ai->ai_addrlen, ctx->hostconf == ((void*)0), proxy_protocol);
                listener_is_new = 1;
            } else if (listener->proxy_protocol != proxy_protocol) {
                freeaddrinfo(res);
                goto ProxyConflict;
            }
            if (listener_setup_ssl(cmd, ctx, node, ssl_node, listener, listener_is_new) != 0) {
                freeaddrinfo(res);
                return -1;
            }
            if (listener->hosts != ((void*)0) && ctx->hostconf != ((void*)0))
                h2o_append_to_null_terminated_list((void *)&listener->hosts, ctx->hostconf);
        }
        freeaddrinfo(res);

    } else if (strcmp(type, "quic") == 0) {


        struct addrinfo *res, *ai;
        if (ssl_node == ((void*)0)) {
            h2o_configurator_errprintf(cmd, node, "QUIC endpoint must have an accompanying SSL configuration");
            return -1;
        }
        if ((res = resolve_address(cmd, node, SOCK_DGRAM, IPPROTO_UDP, hostname, servname)) == ((void*)0))
            return -1;
        for (ai = res; ai != ((void*)0); ai = ai->ai_next) {
            struct listener_config_t *listener = find_listener(ai->ai_addr, ai->ai_addrlen, 1);
            int listener_is_new = 0;
            if (listener == ((void*)0)) {
                int fd = -1;
                switch (conf.run_mode) {
                case 130:
                    if (conf.server_starter.fds != ((void*)0)) {
                        if ((fd = find_listener_from_server_starter(ai->ai_addr, ai->ai_socktype)) == -1) {
                            h2o_configurator_errprintf(cmd, node, "udp socket:%s:%s is not being bound to the server\n", hostname,
                                                       servname);
                            freeaddrinfo(res);
                            return -1;
                        }
                    } else if ((fd = open_inet_listener(cmd, node, hostname, servname, ai->ai_family, ai->ai_socktype,
                                                        ai->ai_protocol, ai->ai_addr, ai->ai_addrlen)) == -1) {
                        freeaddrinfo(res);
                        return -1;
                    }
                    switch (ai->ai_family) {
                    default:
                        break;
                    }
                    break;
                default:
                    break;
                }
                quicly_context_t *quic = h2o_mem_alloc(sizeof(*quic));
                *quic = quicly_spec_context;
                quic->cid_encryptor = &quic_cid_encryptor;
                quic->transport_params.max_streams_uni = 10;
                quic->stream_scheduler = &h2o_http3_server_stream_scheduler;
                quic->stream_open = &h2o_http3_server_on_stream_open;
                quic->generate_resumption_token = &quic_resumption_token_generator;
                listener = add_listener(fd, ai->ai_addr, ai->ai_addrlen, ctx->hostconf == ((void*)0), 0);
                listener->quic.ctx = quic;
                if (quic_node != ((void*)0)) {
                    yoml_t **retry_node;
                    if (h2o_configurator_parse_mapping(cmd, *quic_node, ((void*)0), "retry:s", &retry_node) != 0)
                        return -1;
                    if (retry_node != ((void*)0)) {
                        ssize_t on = h2o_configurator_get_one_of(cmd, *retry_node, "OFF,ON");
                        if (on == -1)
                            return -1;
                        listener->quic.send_retry = (unsigned)on;
                    }
                }
                listener_is_new = 1;
            }
            if (listener_setup_ssl(cmd, ctx, node, ssl_node, listener, listener_is_new) != 0) {
                freeaddrinfo(res);
                return -1;
            }
            if (listener->hosts != ((void*)0) && ctx->hostconf != ((void*)0))
                h2o_append_to_null_terminated_list((void *)&listener->hosts, ctx->hostconf);
        }
        freeaddrinfo(res);

    } else {

        h2o_configurator_errprintf(cmd, node, "unknown listen type: %s", type);
        return -1;
    }

    return 0;

ProxyConflict:
    h2o_configurator_errprintf(cmd, node, "`proxy-protocol` cannot be turned %s, already defined as opposite",
                               proxy_protocol ? "on" : "off");
    return -1;
}
