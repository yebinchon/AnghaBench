
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hash; } ;
struct oid_stat {int valid; TYPE_1__ oid; int stat; } ;


 int hashcpy (int ,unsigned char const*) ;
 int stat_data_from_disk (int *,unsigned char const*) ;

__attribute__((used)) static void load_oid_stat(struct oid_stat *oid_stat, const unsigned char *data,
     const unsigned char *sha1)
{
 stat_data_from_disk(&oid_stat->stat, data);
 hashcpy(oid_stat->oid.hash, sha1);
 oid_stat->valid = 1;
}
