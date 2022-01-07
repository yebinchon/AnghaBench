
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tocblock {scalar_t__ bitmap1_start; scalar_t__ bitmap1_size; scalar_t__ bitmap2_start; scalar_t__ bitmap2_size; } ;
struct privhead {scalar_t__ config_size; } ;
struct parsed_partitions {int dummy; } ;
struct ldmdb {struct tocblock toc; struct privhead ph; } ;
typedef int Sector ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;




 int kfree (struct tocblock*) ;
 struct tocblock* kmalloc_array (int,int,int ) ;
 int ldm_compare_tocblocks (struct tocblock*,struct tocblock*) ;
 int ldm_crit (char*,...) ;
 int ldm_debug (char*,int) ;
 int ldm_error (char*,int) ;
 scalar_t__ ldm_parse_tocblock (int *,struct tocblock*) ;
 int put_dev_sector (int ) ;
 int * read_part_sector (struct parsed_partitions*,unsigned long,int *) ;

__attribute__((used)) static bool ldm_validate_tocblocks(struct parsed_partitions *state,
       unsigned long base, struct ldmdb *ldb)
{
 static const int off[4] = { 131, 130, 129, 128};
 struct tocblock *tb[4];
 struct privhead *ph;
 Sector sect;
 u8 *data;
 int i, nr_tbs;
 bool result = 0;

 BUG_ON(!state || !ldb);
 ph = &ldb->ph;
 tb[0] = &ldb->toc;
 tb[1] = kmalloc_array(3, sizeof(*tb[1]), GFP_KERNEL);
 if (!tb[1]) {
  ldm_crit("Out of memory.");
  goto err;
 }
 tb[2] = (struct tocblock*)((u8*)tb[1] + sizeof(*tb[1]));
 tb[3] = (struct tocblock*)((u8*)tb[2] + sizeof(*tb[2]));






 for (nr_tbs = i = 0; i < 4; i++) {
  data = read_part_sector(state, base + off[i], &sect);
  if (!data) {
   ldm_error("Disk read failed for TOCBLOCK %d.", i);
   continue;
  }
  if (ldm_parse_tocblock(data, tb[nr_tbs]))
   nr_tbs++;
  put_dev_sector(sect);
 }
 if (!nr_tbs) {
  ldm_crit("Failed to find a valid TOCBLOCK.");
  goto err;
 }

 if (((tb[0]->bitmap1_start + tb[0]->bitmap1_size) > ph->config_size) ||
   ((tb[0]->bitmap2_start + tb[0]->bitmap2_size) >
   ph->config_size)) {
  ldm_crit("The bitmaps are out of range.  Giving up.");
  goto err;
 }

 for (i = 1; i < nr_tbs; i++) {
  if (!ldm_compare_tocblocks(tb[0], tb[i])) {
   ldm_crit("TOCBLOCKs 0 and %d do not match.", i);
   goto err;
  }
 }
 ldm_debug("Validated %d TOCBLOCKs successfully.", nr_tbs);
 result = 1;
err:
 kfree(tb[1]);
 return result;
}
