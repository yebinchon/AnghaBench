
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEF_NAND_ECC_OFFSET ;
 int DEF_NAND_OOB_SIZE ;
 int DEF_NAND_PAGE_SIZE ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,int,int,int) ;
 int stderr ;

void usage(const char *prog)
{
 fprintf(stderr, "Usage: %s [options] <input> <output>\n"
  "Options:\n"
  "    -p <pagesize>      NAND page size (default: %d)\n"
  "    -o <oobsize>       NAND OOB size (default: %d)\n"
  "    -e <offset>        NAND ECC offset (default: %d)\n"
  "\n", prog, DEF_NAND_PAGE_SIZE, DEF_NAND_OOB_SIZE,
  DEF_NAND_ECC_OFFSET);
 exit(1);
}
