
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int tcpi ;
struct tcp_info {int tcpi_rtt; int tcpi_snd_mss; int tcpi_snd_cwnd; scalar_t__ tcpi_unacked; scalar_t__ tcpi_maxseg; int tcpi_srtt; int tcpi_snd_sbbytes; } ;
struct tcp_connection_info {int tcpi_rtt; int tcpi_snd_mss; int tcpi_snd_cwnd; scalar_t__ tcpi_unacked; scalar_t__ tcpi_maxseg; int tcpi_srtt; int tcpi_snd_sbbytes; } ;
typedef int socklen_t ;


 int CALC_CWND_PAIR_FROM_BYTE_UNITS (int,int) ;
 int FIONWRITE ;
 int IPPROTO_TCP ;
 int TCP_CONNECTION_INFO ;
 int TCP_INFO ;
 scalar_t__ getsockopt (int,int ,int ,struct tcp_info*,int*) ;
 int ioctl (int,int ,int*) ;

__attribute__((used)) static int obtain_tcp_info(int fd, uint32_t *rtt, uint32_t *mss, uint32_t *cwnd_size, uint32_t *cwnd_avail)
{
    return -1;



}
