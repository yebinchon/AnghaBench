
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfe_ipv6 {scalar_t__* exception_events; int * exception_events64; scalar_t__ packets_not_forwarded; int packets_not_forwarded64; scalar_t__ packets_forwarded; int packets_forwarded64; scalar_t__ connection_flushes; int connection_flushes64; scalar_t__ connection_match_hash_reorders; int connection_match_hash_reorders64; scalar_t__ connection_match_hash_hits; int connection_match_hash_hits64; scalar_t__ connection_destroy_misses; int connection_destroy_misses64; scalar_t__ connection_destroy_requests; int connection_destroy_requests64; scalar_t__ connection_create_collisions; int connection_create_collisions64; scalar_t__ connection_create_requests; int connection_create_requests64; } ;


 int SFE_IPV6_EXCEPTION_EVENT_LAST ;

__attribute__((used)) static void sfe_ipv6_update_summary_stats(struct sfe_ipv6 *si)
{
 int i;

 si->connection_create_requests64 += si->connection_create_requests;
 si->connection_create_requests = 0;
 si->connection_create_collisions64 += si->connection_create_collisions;
 si->connection_create_collisions = 0;
 si->connection_destroy_requests64 += si->connection_destroy_requests;
 si->connection_destroy_requests = 0;
 si->connection_destroy_misses64 += si->connection_destroy_misses;
 si->connection_destroy_misses = 0;
 si->connection_match_hash_hits64 += si->connection_match_hash_hits;
 si->connection_match_hash_hits = 0;
 si->connection_match_hash_reorders64 += si->connection_match_hash_reorders;
 si->connection_match_hash_reorders = 0;
 si->connection_flushes64 += si->connection_flushes;
 si->connection_flushes = 0;
 si->packets_forwarded64 += si->packets_forwarded;
 si->packets_forwarded = 0;
 si->packets_not_forwarded64 += si->packets_not_forwarded;
 si->packets_not_forwarded = 0;

 for (i = 0; i < SFE_IPV6_EXCEPTION_EVENT_LAST; i++) {
  si->exception_events64[i] += si->exception_events[i];
  si->exception_events[i] = 0;
 }
}
