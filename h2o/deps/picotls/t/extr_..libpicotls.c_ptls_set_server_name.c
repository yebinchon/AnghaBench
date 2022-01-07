
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* server_name; } ;
typedef TYPE_1__ ptls_t ;


 int PTLS_ERROR_NO_MEMORY ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

int ptls_set_server_name(ptls_t *tls, const char *server_name, size_t server_name_len)
{
    char *duped = ((void*)0);

    if (server_name != ((void*)0)) {
        if (server_name_len == 0)
            server_name_len = strlen(server_name);
        if ((duped = malloc(server_name_len + 1)) == ((void*)0))
            return PTLS_ERROR_NO_MEMORY;
        memcpy(duped, server_name, server_name_len);
        duped[server_name_len] = '\0';
    }

    free(tls->server_name);
    tls->server_name = duped;

    return 0;
}
