#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  tcpi ;
struct tcp_info {int tcpi_rtt; int tcpi_snd_mss; int tcpi_snd_cwnd; scalar_t__ tcpi_unacked; scalar_t__ tcpi_maxseg; int tcpi_srtt; int tcpi_snd_sbbytes; } ;
struct tcp_connection_info {int tcpi_rtt; int tcpi_snd_mss; int tcpi_snd_cwnd; scalar_t__ tcpi_unacked; scalar_t__ tcpi_maxseg; int tcpi_srtt; int tcpi_snd_sbbytes; } ;
typedef  int socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FIONWRITE ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  TCP_CONNECTION_INFO ; 
 int /*<<< orphan*/  TCP_INFO ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tcp_info*,int*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(int fd, uint32_t *rtt, uint32_t *mss, uint32_t *cwnd_size, uint32_t *cwnd_avail)
{
#define CALC_CWND_PAIR_FROM_BYTE_UNITS(cwnd_bytes, inflight_bytes)                                                                 \
    do {                                                                                                                           \
        *cwnd_size = (cwnd_bytes + *mss / 2) / *mss;                                                                               \
        *cwnd_avail = cwnd_bytes > inflight_bytes ? (cwnd_bytes - inflight_bytes) / *mss + 2 : 2;                                  \
    } while (0)

#if defined(__linux__) && defined(TCP_INFO)

    struct tcp_info tcpi;
    socklen_t tcpisz = sizeof(tcpi);
    if (getsockopt(fd, IPPROTO_TCP, TCP_INFO, &tcpi, &tcpisz) != 0)
        return -1;
    *rtt = tcpi.tcpi_rtt;
    *mss = tcpi.tcpi_snd_mss;
    *cwnd_size = tcpi.tcpi_snd_cwnd;
    *cwnd_avail = tcpi.tcpi_snd_cwnd > tcpi.tcpi_unacked ? tcpi.tcpi_snd_cwnd - tcpi.tcpi_unacked + 2 : 2;
    return 0;

#elif defined(__FreeBSD__) && defined(TCP_INFO) && 0 /* disabled since we wouldn't use it anyways; OS lacks TCP_NOTSENT_LOWAT */

    struct tcp_info tcpi;
    socklen_t tcpisz = sizeof(tcpi);
    int bytes_inflight;
    if (getsockopt(fd, IPPROTO_TCP, TCP_INFO, &tcpi, &tcpisz) != 0 || ioctl(fd, FIONWRITE, &bytes_inflight) == -1)
        return -1;
    *rtt = tcpi.tcpi_rtt;
    *mss = tcpi.tcpi_snd_mss;
    CALC_CWND_PAIR_FROM_BYTE_UNITS(tcpi.tcpi_snd_cwnd, bytes_inflight);
    return 0;

#elif defined(__APPLE__) && defined(TCP_CONNECTION_INFO)

    struct tcp_connection_info tcpi;
    socklen_t tcpisz = sizeof(tcpi);
    if (getsockopt(fd, IPPROTO_TCP, TCP_CONNECTION_INFO, &tcpi, &tcpisz) != 0 || tcpi.tcpi_maxseg == 0)
        return -1;
    *rtt = tcpi.tcpi_srtt * 1000;
    *mss = tcpi.tcpi_maxseg;
    CALC_CWND_PAIR_FROM_BYTE_UNITS(tcpi.tcpi_snd_cwnd, tcpi.tcpi_snd_sbbytes);
    return 0;

#else
    /* TODO add support for NetBSD; note that the OS returns the number of packets for tcpi_snd_cwnd; see
     * http://twitter.com/n_soda/status/740719125878575105
     */
    return -1;
#endif

#undef CALC_CWND_PAIR_FROM_BYTE_UNITS
}