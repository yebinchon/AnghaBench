
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* negotiated_protocol; } ;
typedef TYPE_1__ ptls_t ;


 int PTLS_ERROR_NO_MEMORY ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

int ptls_set_negotiated_protocol(ptls_t *tls, const char *protocol, size_t protocol_len)
{
    char *duped = ((void*)0);

    if (protocol != ((void*)0)) {
        if (protocol_len == 0)
            protocol_len = strlen(protocol);
        if ((duped = malloc(protocol_len + 1)) == ((void*)0))
            return PTLS_ERROR_NO_MEMORY;
        memcpy(duped, protocol, protocol_len);
        duped[protocol_len] = '\0';
    }

    free(tls->negotiated_protocol);
    tls->negotiated_protocol = duped;

    return 0;
}
