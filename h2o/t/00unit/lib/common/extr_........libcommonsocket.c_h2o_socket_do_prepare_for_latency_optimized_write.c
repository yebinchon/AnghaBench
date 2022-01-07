
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_8__ {size_t suggested_write_size; } ;
struct TYPE_9__ {TYPE_1__ _latency_optimization; } ;
typedef TYPE_2__ h2o_socket_t ;
typedef int h2o_socket_latency_optimization_conditions_t ;


 int UINT64_MAX ;
 int adjust_notsent_lowat ;
 int disable_latency_optimized_write (TYPE_2__*,int ) ;
 int h2o_evloop_get_execution_time_millisec (int ) ;
 int h2o_socket_get_fd (TYPE_2__*) ;
 int h2o_socket_get_loop (TYPE_2__*) ;
 scalar_t__ obtain_tcp_info (int ,int *,int *,int *,int *) ;
 int prepare_for_latency_optimized_write (TYPE_2__*,int const*,int ,int ,int ,int ,int ,int ) ;

size_t h2o_socket_do_prepare_for_latency_optimized_write(h2o_socket_t *sock,
                                                         const h2o_socket_latency_optimization_conditions_t *conditions)
{
    uint32_t rtt = 0, mss = 0, cwnd_size = 0, cwnd_avail = 0;
    uint64_t loop_time = UINT64_MAX;
    int can_prepare = 1;



    can_prepare = 0;






    if (can_prepare)
        loop_time = h2o_evloop_get_execution_time_millisec(h2o_socket_get_loop(sock));



    if (can_prepare && obtain_tcp_info(h2o_socket_get_fd(sock), &rtt, &mss, &cwnd_size, &cwnd_avail) != 0)
        can_prepare = 0;


    if (can_prepare) {
        prepare_for_latency_optimized_write(sock, conditions, rtt, mss, cwnd_size, cwnd_avail, loop_time, adjust_notsent_lowat);
    } else {
        disable_latency_optimized_write(sock, adjust_notsent_lowat);
    }

    return sock->_latency_optimization.suggested_write_size;


}
