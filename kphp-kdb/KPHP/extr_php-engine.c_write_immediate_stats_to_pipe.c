
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_immediate_stats_t ;


 int QSIZE ;
 int RPC_PHP_IMMEDIATE_STATS ;
 int dl_passert (int,int ) ;
 int dl_pstr (char*,int ) ;
 int errno ;
 int immediate_stats ;
 int master_pipe_fast_write ;
 int memcpy (int*,int *,int) ;
 int memset (int*,int ,size_t) ;
 int pipe_fast_packet_id ;
 int prepare_rpc_query_raw (int ,int*,int) ;
 scalar_t__ write (int,int*,size_t) ;

void write_immediate_stats_to_pipe() {
  if (master_pipe_fast_write != -1) {

    int q[(sizeof (php_immediate_stats_t) + 1 + sizeof (int) * 5 + 3) & -4];
    int qsize = (sizeof (php_immediate_stats_t) + 1 + sizeof (int) * 5 + 3) & -4;

    memset (q, 0, (size_t)qsize);

    q[2] = RPC_PHP_IMMEDIATE_STATS;
    memcpy (q + 3, &immediate_stats, sizeof (php_immediate_stats_t));

    prepare_rpc_query_raw (pipe_fast_packet_id++, q, qsize);
    int err = (int)write (master_pipe_fast_write, q, (size_t)qsize);
    dl_passert (err == qsize, dl_pstr ("error [%d] during write to pipe", errno));
  }
}
