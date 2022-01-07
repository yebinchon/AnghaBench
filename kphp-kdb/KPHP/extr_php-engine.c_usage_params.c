
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

void usage_params (void) {
  printf ("[-H<port>] [-r<rpc_port>] [-w<host>:<port>] [-q] [f<workers_n>] [-D<key>=<value>] [-o] [-p<master_port>] [-s<cluster_name>] [-T<tl_config_file_name>] [-t<script_time_limit>]");
}
