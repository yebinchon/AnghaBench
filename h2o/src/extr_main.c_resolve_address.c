
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yoml_t ;
struct addrinfo {int ai_socktype; int ai_protocol; int ai_flags; } ;
typedef int hints ;
typedef int h2o_configurator_command_t ;


 int AI_ADDRCONFIG ;
 int AI_NUMERICSERV ;
 int AI_PASSIVE ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int h2o_configurator_errprintf (int *,int *,char*,...) ;
 int memset (struct addrinfo*,int ,int) ;

__attribute__((used)) static struct addrinfo *resolve_address(h2o_configurator_command_t *cmd, yoml_t *node, int socktype, int protocol,
                                        const char *hostname, const char *servname)
{
    struct addrinfo hints, *res;
    int error;

    memset(&hints, 0, sizeof(hints));
    hints.ai_socktype = socktype;
    hints.ai_protocol = protocol;
    hints.ai_flags = AI_ADDRCONFIG | AI_NUMERICSERV | AI_PASSIVE;

    if ((error = getaddrinfo(hostname, servname, &hints, &res)) != 0) {
        h2o_configurator_errprintf(cmd, node, "failed to resolve the listening address: %s", gai_strerror(error));
        return ((void*)0);
    } else if (res == ((void*)0)) {
        h2o_configurator_errprintf(cmd, node, "failed to resolve the listening address: getaddrinfo returned an empty list");
        return ((void*)0);
    }

    return res;
}
