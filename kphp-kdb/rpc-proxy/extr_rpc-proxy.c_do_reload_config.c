
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_config {int clusters_num; scalar_t__* config_md5_hex; int config_bytes; scalar_t__ config_loaded_at; int * Clusters; } ;


 struct rpc_config* CurConf ;
 struct rpc_config* NextConf ;
 int O_RDONLY ;
 int clear_config (struct rpc_config*,int) ;
 int close (scalar_t__) ;
 int config_buff ;
 int config_bytes ;
 char* config_filename ;
 int create_all_outbound_connections () ;
 int exit (int) ;
 scalar_t__* fd ;
 int fprintf (int ,char*,...) ;
 int kdb_load_hosts () ;
 int lrand48 () ;
 int md5_hex (int ,int ,scalar_t__*) ;
 scalar_t__ need_reload_config ;
 scalar_t__ now ;
 scalar_t__ open (char*,int ) ;
 int parse_config (struct rpc_config*,struct rpc_config*,int) ;
 int rpc_cluster_tree ;
 int stderr ;
 scalar_t__ time (int ) ;
 int tree_clear_rpc_cluster (int ) ;
 int tree_insert_rpc_cluster (int ,int *,int ) ;
 scalar_t__ verbosity ;
 int vkprintf (int ,char*,char*) ;
 scalar_t__* zmalloc (int) ;

int do_reload_config (int create_conn) {
  int res;
  need_reload_config = 0;

  fd[0] = open (config_filename, O_RDONLY);
  if (fd[0] < 0) {
    fprintf (stderr, "cannot re-read config file %s: %m\n", config_filename);
    return -1;
  }

  res = kdb_load_hosts ();
  if (res > 0 && verbosity > 0) {
    fprintf (stderr, "/etc/hosts changed, reloaded\n");
  }

  res = parse_config (NextConf, CurConf, 0);

  close (fd[0]);



  if (res < 0) {
    vkprintf (0, "error while re-reading config file %s, new configuration NOT applied\n", config_filename);
    return res;
  }

  res = parse_config (NextConf, CurConf, 1);

  if (res < 0) {
    vkprintf (0, "fatal error while re-reading config file %s\n", config_filename);
    clear_config (NextConf, 0);
    exit (-res);
  }

  struct rpc_config *tmp = CurConf;
  CurConf = NextConf;
  NextConf = tmp;

  rpc_cluster_tree = tree_clear_rpc_cluster (rpc_cluster_tree);
  int i;
  for (i = 0; i < CurConf->clusters_num; i++) {
    rpc_cluster_tree = tree_insert_rpc_cluster (rpc_cluster_tree, &CurConf->Clusters[i], lrand48 ());
  }

  clear_config (NextConf, 1);

  if (create_conn) {
    create_all_outbound_connections ();
  }

  CurConf->config_loaded_at = now ? now : time (0);
  CurConf->config_bytes = config_bytes;
  CurConf->config_md5_hex = zmalloc (33);
  md5_hex (config_buff, config_bytes, CurConf->config_md5_hex);
  CurConf->config_md5_hex[32] = 0;

  vkprintf (0, "configuration file %s re-read successfully, new configuration active\n", config_filename);

  return 0;
}
