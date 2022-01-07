
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int sm_connect_tcp (char*,int) ;
 int sm_connect_unix (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strndup (char const*,size_t) ;
 char* strrchr (char const*,char) ;
 int strtol (char const*,int *,int ) ;

int sm_connect(const char *socket_addr) {
  if (strncmp(socket_addr, "unix:", 5) == 0) {



    return sm_connect_unix(socket_addr + 5);

  } else {
    const char *s_port = strrchr(socket_addr, ':');
    int port = 0;

    if (s_port) {
      port = strtol(s_port + 1, ((void*)0), 0);
    }

    if (port <= 0) {
      return -1;
    }

    size_t host_len = s_port - socket_addr;
    char *host = strndup(socket_addr, host_len);

    int ret = sm_connect_tcp(host, port);
    free(host);
    return ret;
  }
}
