
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sfe_ipv4_debug_xml_write_state {int state; } ;
struct sfe_ipv4 {unsigned int num_connections; int lock; int connection_match_hash_reorders64; int connection_match_hash_hits64; int connection_flushes64; int connection_destroy_misses64; int connection_destroy_requests64; int connection_create_collisions64; int connection_create_requests64; int packets_not_forwarded64; int packets_forwarded64; } ;


 int CHAR_DEV_MSG_SIZE ;
 scalar_t__ copy_to_user (char*,char*,int ) ;
 int sfe_ipv4_update_summary_stats (struct sfe_ipv4*) ;
 int snprintf (char*,int ,char*,unsigned int,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool sfe_ipv4_debug_dev_read_stats(struct sfe_ipv4 *si, char *buffer, char *msg, size_t *length,
       int *total_read, struct sfe_ipv4_debug_xml_write_state *ws)
{
 int bytes_read;
 unsigned int num_connections;
 u64 packets_forwarded;
 u64 packets_not_forwarded;
 u64 connection_create_requests;
 u64 connection_create_collisions;
 u64 connection_destroy_requests;
 u64 connection_destroy_misses;
 u64 connection_flushes;
 u64 connection_match_hash_hits;
 u64 connection_match_hash_reorders;

 spin_lock_bh(&si->lock);
 sfe_ipv4_update_summary_stats(si);

 num_connections = si->num_connections;
 packets_forwarded = si->packets_forwarded64;
 packets_not_forwarded = si->packets_not_forwarded64;
 connection_create_requests = si->connection_create_requests64;
 connection_create_collisions = si->connection_create_collisions64;
 connection_destroy_requests = si->connection_destroy_requests64;
 connection_destroy_misses = si->connection_destroy_misses64;
 connection_flushes = si->connection_flushes64;
 connection_match_hash_hits = si->connection_match_hash_hits64;
 connection_match_hash_reorders = si->connection_match_hash_reorders64;
 spin_unlock_bh(&si->lock);

 bytes_read = snprintf(msg, CHAR_DEV_MSG_SIZE, "\t<stats "
         "num_connections=\"%u\" "
         "pkts_forwarded=\"%llu\" pkts_not_forwarded=\"%llu\" "
         "create_requests=\"%llu\" create_collisions=\"%llu\" "
         "destroy_requests=\"%llu\" destroy_misses=\"%llu\" "
         "flushes=\"%llu\" "
         "hash_hits=\"%llu\" hash_reorders=\"%llu\" />\n",
         num_connections,
         packets_forwarded,
         packets_not_forwarded,
         connection_create_requests,
         connection_create_collisions,
         connection_destroy_requests,
         connection_destroy_misses,
         connection_flushes,
         connection_match_hash_hits,
         connection_match_hash_reorders);
 if (copy_to_user(buffer + *total_read, msg, CHAR_DEV_MSG_SIZE)) {
  return 0;
 }

 *length -= bytes_read;
 *total_read += bytes_read;

 ws->state++;
 return 1;
}
