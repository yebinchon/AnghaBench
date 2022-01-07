
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int sa_family; } ;
typedef int socklen_t ;
struct TYPE_8__ {int base; } ;
struct TYPE_6__ {TYPE_4__ esni_keys; } ;
struct TYPE_7__ {TYPE_1__ client; } ;
typedef TYPE_2__ ptls_handshake_properties_t ;
typedef int ptls_context_t ;


 int SOCK_STREAM ;
 scalar_t__ connect (int,struct sockaddr*,int ) ;
 int free (int ) ;
 int handle_connection (int,int *,char const*,char const*,TYPE_2__*,int,int) ;
 int perror (char*) ;
 TYPE_4__ resolve_esni_keys (char const*) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int run_client(struct sockaddr *sa, socklen_t salen, ptls_context_t *ctx, const char *server_name, const char *input_file,
                      ptls_handshake_properties_t *hsprop, int request_key_update, int keep_sender_open)
{
    int fd;

    hsprop->client.esni_keys = resolve_esni_keys(server_name);

    if ((fd = socket(sa->sa_family, SOCK_STREAM, 0)) == 1) {
        perror("socket(2) failed");
        return 1;
    }
    if (connect(fd, sa, salen) != 0) {
        perror("connect(2) failed");
        return 1;
    }

    int ret = handle_connection(fd, ctx, server_name, input_file, hsprop, request_key_update, keep_sender_open);
    free(hsprop->client.esni_keys.base);
    return ret;
}
