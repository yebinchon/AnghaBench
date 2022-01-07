
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfe_ipv4 {int lock; scalar_t__ connection_match_hash_reorders64; scalar_t__ connection_match_hash_hits64; scalar_t__ connection_flushes64; scalar_t__ connection_destroy_misses64; scalar_t__ connection_destroy_requests64; scalar_t__ connection_create_collisions64; scalar_t__ connection_create_requests64; scalar_t__ packets_not_forwarded64; scalar_t__ packets_forwarded64; } ;
struct file {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 struct sfe_ipv4 __si ;
 int sfe_ipv4_update_summary_stats (struct sfe_ipv4*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static ssize_t sfe_ipv4_debug_dev_write(struct file *filp, const char *buffer, size_t length, loff_t *offset)
{
 struct sfe_ipv4 *si = &__si;

 spin_lock_bh(&si->lock);
 sfe_ipv4_update_summary_stats(si);

 si->packets_forwarded64 = 0;
 si->packets_not_forwarded64 = 0;
 si->connection_create_requests64 = 0;
 si->connection_create_collisions64 = 0;
 si->connection_destroy_requests64 = 0;
 si->connection_destroy_misses64 = 0;
 si->connection_flushes64 = 0;
 si->connection_match_hash_hits64 = 0;
 si->connection_match_hash_reorders64 = 0;
 spin_unlock_bh(&si->lock);

 return length;
}
