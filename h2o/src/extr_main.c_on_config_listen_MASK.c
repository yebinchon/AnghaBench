#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_24__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {char* scalar; } ;
struct TYPE_30__ {int type; TYPE_3__ data; } ;
typedef  TYPE_5__ yoml_t ;
struct sockaddr_un {char* sun_path; int /*<<< orphan*/  sun_family; } ;
typedef  void sockaddr ;
struct TYPE_27__ {unsigned int send_retry; TYPE_6__* ctx; } ;
struct listener_config_t {int proxy_protocol; int /*<<< orphan*/ * hosts; TYPE_2__ quic; } ;
struct addrinfo {void* ai_addr; int ai_addrlen; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; struct addrinfo* ai_next; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sa ;
struct TYPE_25__ {int max_streams_uni; } ;
struct TYPE_31__ {int /*<<< orphan*/ * generate_resumption_token; int /*<<< orphan*/ * stream_open; int /*<<< orphan*/ * stream_scheduler; TYPE_1__ transport_params; int /*<<< orphan*/ * cid_encryptor; } ;
typedef  TYPE_6__ quicly_context_t ;
typedef  int /*<<< orphan*/  on ;
struct TYPE_32__ {int /*<<< orphan*/ * hostconf; } ;
typedef  TYPE_7__ h2o_configurator_context_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;
struct TYPE_29__ {int /*<<< orphan*/ * fds; } ;
struct TYPE_26__ {int run_mode; TYPE_4__ server_starter; } ;

/* Variables and functions */
#define  AF_INET 132 
#define  AF_INET6 131 
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  IPV6_RECVPKTINFO ; 
 int /*<<< orphan*/  IP_PKTINFO ; 
#define  RUN_MODE_WORKER 130 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
#define  YOML_TYPE_MAPPING 129 
#define  YOML_TYPE_SCALAR 128 
 struct listener_config_t* FUNC0 (int,void*,int,int /*<<< orphan*/ ,int) ; 
 TYPE_24__ conf ; 
 int /*<<< orphan*/  errno ; 
 struct listener_config_t* FUNC1 (void*,int,int) ; 
 int FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_5__*,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_5__*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_5__*,char*,char*,TYPE_5__***,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  h2o_http3_server_on_stream_open ; 
 int /*<<< orphan*/  h2o_http3_server_stream_scheduler ; 
 TYPE_6__* FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_7__*,TYPE_5__*,TYPE_5__**,struct listener_config_t*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_5__*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_5__*,struct sockaddr_un*,TYPE_5__**,TYPE_5__**) ; 
 int /*<<< orphan*/  quic_cid_encryptor ; 
 int /*<<< orphan*/  quic_resumption_token_generator ; 
 TYPE_6__ quicly_spec_context ; 
 struct addrinfo* FUNC14 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC16 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (char const*) ; 

__attribute__((used)) static int FUNC20(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    const char *hostname = NULL, *servname, *type = "tcp";
    yoml_t **ssl_node = NULL, **owner_node = NULL, **permission_node = NULL, **quic_node = NULL;
    int proxy_protocol = 0;

    /* fetch servname (and hostname) */
    switch (node->type) {
    case YOML_TYPE_SCALAR:
        servname = node->data.scalar;
        break;
    case YOML_TYPE_MAPPING: {
        yoml_t **port_node, **host_node, **type_node, **proxy_protocol_node;
        if (FUNC7(cmd, node, "port:s", "host:s,type:s,owner:s,permission:*,ssl:m,proxy-protocol:*,quic:m",
                                           &port_node, &host_node, &type_node, &owner_node, &permission_node, &ssl_node,
                                           &proxy_protocol_node, &quic_node) != 0)
            return -1;
        servname = (*port_node)->data.scalar;
        if (host_node != NULL)
            hostname = (*host_node)->data.scalar;
        if (type_node != NULL) {
            type = (*type_node)->data.scalar;
        } else if (quic_node != NULL) {
            type = "quic";
        }
        if (proxy_protocol_node != NULL &&
            (proxy_protocol = (int)FUNC6(cmd, *proxy_protocol_node, "OFF,ON")) == -1)
            return -1;
    } break;
    default:
        FUNC5(cmd, node, "value must be a string or a mapping (with keys: `port` and optionally `host`)");
        return -1;
    }

    if (FUNC16(type, "unix") == 0) {

        /* unix socket */
        struct sockaddr_un sa;
        int listener_is_new;
        struct listener_config_t *listener;

        /* build sockaddr */
        FUNC11(&sa, 0, sizeof(sa));
        if (FUNC19(servname) >= sizeof(sa.sun_path)) {
            FUNC5(cmd, node, "path:%s is too long as a unix socket name", servname);
            return -1;
        }
        sa.sun_family = AF_UNIX;
        FUNC17(sa.sun_path, servname);
        /* find existing listener or create a new one */
        listener_is_new = 0;
        if ((listener = FUNC1((void *)&sa, sizeof(sa), 0)) == NULL) {
            int fd = -1;
            switch (conf.run_mode) {
            case RUN_MODE_WORKER:
                if (conf.server_starter.fds != NULL) {
                    if ((fd = FUNC2((void *)&sa, SOCK_STREAM)) == -1) {
                        FUNC5(cmd, node, "unix socket:%s is not being bound to the server\n", sa.sun_path);
                        return -1;
                    }
                } else {
                    if ((fd = FUNC13(cmd, node, &sa, owner_node, permission_node)) == -1)
                        return -1;
                }
                break;
            default:
                break;
            }
            listener = FUNC0(fd, (struct sockaddr *)&sa, sizeof(sa), ctx->hostconf == NULL, proxy_protocol);
            listener_is_new = 1;
        } else if (listener->proxy_protocol != proxy_protocol) {
            goto ProxyConflict;
        }
        if (FUNC10(cmd, ctx, node, ssl_node, listener, listener_is_new) != 0)
            return -1;
        if (listener->hosts != NULL && ctx->hostconf != NULL)
            FUNC4((void *)&listener->hosts, ctx->hostconf);

    } else if (FUNC16(type, "tcp") == 0) {

        /* TCP socket */
        struct addrinfo *res, *ai;
        if ((res = FUNC14(cmd, node, SOCK_STREAM, IPPROTO_TCP, hostname, servname)) == NULL)
            return -1;
        for (ai = res; ai != NULL; ai = ai->ai_next) {
            struct listener_config_t *listener = FUNC1(ai->ai_addr, ai->ai_addrlen, 0);
            int listener_is_new = 0;
            if (listener == NULL) {
                int fd = -1;
                switch (conf.run_mode) {
                case RUN_MODE_WORKER:
                    if (conf.server_starter.fds != NULL) {
                        if ((fd = FUNC2(ai->ai_addr, SOCK_STREAM)) == -1) {
                            FUNC5(cmd, node, "tcp socket:%s:%s is not being bound to the server\n", hostname,
                                                       servname);
                            FUNC3(res);
                            return -1;
                        }
                    } else {
                        if ((fd = FUNC12(cmd, node, hostname, servname, ai->ai_family, ai->ai_socktype, ai->ai_protocol,
                                                     ai->ai_addr, ai->ai_addrlen)) == -1) {
                            FUNC3(res);
                            return -1;
                        }
                    }
                    break;
                default:
                    break;
                }
                listener = FUNC0(fd, ai->ai_addr, ai->ai_addrlen, ctx->hostconf == NULL, proxy_protocol);
                listener_is_new = 1;
            } else if (listener->proxy_protocol != proxy_protocol) {
                FUNC3(res);
                goto ProxyConflict;
            }
            if (FUNC10(cmd, ctx, node, ssl_node, listener, listener_is_new) != 0) {
                FUNC3(res);
                return -1;
            }
            if (listener->hosts != NULL && ctx->hostconf != NULL)
                FUNC4((void *)&listener->hosts, ctx->hostconf);
        }
        FUNC3(res);

    } else if (FUNC16(type, "quic") == 0) {

        /* QUIC socket */
        struct addrinfo *res, *ai;
        if (ssl_node == NULL) {
            FUNC5(cmd, node, "QUIC endpoint must have an accompanying SSL configuration");
            return -1;
        }
        if ((res = FUNC14(cmd, node, SOCK_DGRAM, IPPROTO_UDP, hostname, servname)) == NULL)
            return -1;
        for (ai = res; ai != NULL; ai = ai->ai_next) {
            struct listener_config_t *listener = FUNC1(ai->ai_addr, ai->ai_addrlen, 1);
            int listener_is_new = 0;
            if (listener == NULL) {
                int fd = -1;
                switch (conf.run_mode) {
                case RUN_MODE_WORKER:
                    if (conf.server_starter.fds != NULL) {
                        if ((fd = FUNC2(ai->ai_addr, ai->ai_socktype)) == -1) {
                            FUNC5(cmd, node, "udp socket:%s:%s is not being bound to the server\n", hostname,
                                                       servname);
                            FUNC3(res);
                            return -1;
                        }
                    } else if ((fd = FUNC12(cmd, node, hostname, servname, ai->ai_family, ai->ai_socktype,
                                                        ai->ai_protocol, ai->ai_addr, ai->ai_addrlen)) == -1) {
                        FUNC3(res);
                        return -1;
                    }
                    switch (ai->ai_family) {
#ifdef IP_PKTINFO /* this is the de-facto API (that works on both linux, macOS) */
                    case AF_INET: {
                        int on = 1;
                        if (setsockopt(fd, IPPROTO_IP, IP_PKTINFO, &on, sizeof(on)) != 0)
                            h2o_fatal("failed to set IP_PKTINFO option:%s", strerror(errno));
                    } break;
#endif
#ifdef IPV6_RECVPKTINFO /* API defined by RFC 3542 */
                    case AF_INET6: {
                        int on = 1;
                        if (setsockopt(fd, IPPROTO_IPV6, IPV6_RECVPKTINFO, &on, sizeof(on)) != 0)
                            h2o_fatal("failed to set IPV6_RECVPKTINFO option:%s", strerror(errno));
                    } break;
#endif
                    default:
                        break;
                    }
                    break;
                default:
                    break;
                }
                quicly_context_t *quic = FUNC9(sizeof(*quic));
                *quic = quicly_spec_context;
                quic->cid_encryptor = &quic_cid_encryptor;
                quic->transport_params.max_streams_uni = 10;
                quic->stream_scheduler = &h2o_http3_server_stream_scheduler;
                quic->stream_open = &h2o_http3_server_on_stream_open;
                quic->generate_resumption_token = &quic_resumption_token_generator;
                listener = FUNC0(fd, ai->ai_addr, ai->ai_addrlen, ctx->hostconf == NULL, 0);
                listener->quic.ctx = quic;
                if (quic_node != NULL) {
                    yoml_t **retry_node;
                    if (FUNC7(cmd, *quic_node, NULL, "retry:s", &retry_node) != 0)
                        return -1;
                    if (retry_node != NULL) {
                        ssize_t on = FUNC6(cmd, *retry_node, "OFF,ON");
                        if (on == -1)
                            return -1;
                        listener->quic.send_retry = (unsigned)on;
                    }
                }
                listener_is_new = 1;
            }
            if (FUNC10(cmd, ctx, node, ssl_node, listener, listener_is_new) != 0) {
                FUNC3(res);
                return -1;
            }
            if (listener->hosts != NULL && ctx->hostconf != NULL)
                FUNC4((void *)&listener->hosts, ctx->hostconf);
        }
        FUNC3(res);

    } else {

        FUNC5(cmd, node, "unknown listen type: %s", type);
        return -1;
    }

    return 0;

ProxyConflict:
    FUNC5(cmd, node, "`proxy-protocol` cannot be turned %s, already defined as opposite",
                               proxy_protocol ? "on" : "off");
    return -1;
}