
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct sockaddr {int sa_family; } ;
typedef int ssize_t ;
typedef int socklen_t ;
typedef int in_port_t ;


 int AF_INET ;
 int AF_INET6 ;
 int CHECK_EOF () ;
 int EXPECT_CHAR (char) ;
 int SKIP_TO_WS () ;
 int htons (unsigned short) ;
 int inet_pton (int ,char*,void*) ;
 int memset (struct sockaddr*,int ,int) ;
 int sscanf (char*,char*,unsigned short*) ;

__attribute__((used)) static ssize_t parse_proxy_line(char *src, size_t len, struct sockaddr *sa, socklen_t *salen)
{
    char *p = src, *end = p + len;
    void *addr;
    in_port_t *port;


    do { if (p == end) return -2; if (*p++ != 'P') return -1; } while (0);
    do { if (p == end) return -2; if (*p++ != 'R') return -1; } while (0);
    do { if (p == end) return -2; if (*p++ != 'O') return -1; } while (0);
    do { if (p == end) return -2; if (*p++ != 'X') return -1; } while (0);
    do { if (p == end) return -2; if (*p++ != 'Y') return -1; } while (0);
    do { if (p == end) return -2; if (*p++ != ' ') return -1; } while (0);


    if (p == end) return -2;
    if (*p++ != 'T') {
        *salen = 0;
        goto SkipToEOL;
    }
    do { if (p == end) return -2; if (*p++ != 'C') return -1; } while (0);
    do { if (p == end) return -2; if (*p++ != 'P') return -1; } while (0);
    if (p == end) return -2;
    switch (*p++) {
    case '4':
        *salen = sizeof(struct sockaddr_in);
        memset(sa, 0, sizeof(struct sockaddr_in));
        sa->sa_family = AF_INET;
        addr = &((struct sockaddr_in *)sa)->sin_addr;
        port = &((struct sockaddr_in *)sa)->sin_port;
        break;
    case '6':
        *salen = sizeof(struct sockaddr_in6);
        memset(sa, 0, sizeof(struct sockaddr_in6));
        sa->sa_family = AF_INET6;
        addr = &((struct sockaddr_in6 *)sa)->sin6_addr;
        port = &((struct sockaddr_in6 *)sa)->sin6_port;
        break;
    default:
        return -1;
    }
    do { if (p == end) return -2; if (*p++ != ' ') return -1; } while (0);


    char *addr_start = p;
    do { do { if (p == end) return -2; } while (*p++ != ' '); --p; } while (0);
    *p = '\0';
    if (inet_pton(sa->sa_family, addr_start, addr) != 1)
        return -1;
    *p++ = ' ';


    do { do { if (p == end) return -2; } while (*p++ != ' '); --p; } while (0);
    ++p;


    char *port_start = p;
    do { do { if (p == end) return -2; } while (*p++ != ' '); --p; } while (0);
    *p = '\0';
    unsigned short usval;
    if (sscanf(port_start, "%hu", &usval) != 1)
        return -1;
    *port = htons(usval);
    *p++ = ' ';

SkipToEOL:
    do {
        if (p == end) return -2;
    } while (*p++ != '\r');
    if (p == end) return -2;
    if (*p++ != '\n')
        return -2;
    return p - src;




}
