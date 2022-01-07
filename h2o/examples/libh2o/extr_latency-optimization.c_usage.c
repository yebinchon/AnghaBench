
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void usage(const char *cmd)
{
    fprintf(stderr,
            "Usage: %s [opts] [<host>:]<port>\n"
            "Options: --listen             if set, waits for incoming connection. Otherwise,\n"
            "                              connects to the server running at given address\n"
            "         --reverse-role       if set, reverses the role bet. server and the\n"
            "                              client once the connection is established\n"
            "         --tls                use TLS\n"
            "         --block-size=octets  default write block size\n"
            "         --min-rtt=ms         minimum RTT to enable latency optimization\n"
            "         --max-cwnd=octets    maximum size of CWND to enable latency\n"
            "                              optimization\n",
            cmd);
    exit(1);
}
