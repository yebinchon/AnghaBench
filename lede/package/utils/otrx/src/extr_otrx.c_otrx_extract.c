
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trx_header {int * offset; int length; int magic; } ;
typedef int hdr ;
typedef int FILE ;


 int EACCES ;
 int EINVAL ;
 int EIO ;
 int SEEK_SET ;
 int TRX_MAGIC ;
 int TRX_MAX_PARTS ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (struct trx_header*,int,int,int *) ;
 int fseek (int *,int,int ) ;
 int le32_to_cpu (int ) ;
 int optind ;
 int otrx_extract_copy (int *,int,size_t,char*) ;
 int otrx_extract_parse_options (int,char**) ;
 char** partition ;
 int printf (char*,int,char*) ;
 int stderr ;
 int trx_offset ;
 char* trx_path ;

__attribute__((used)) static int otrx_extract(int argc, char **argv) {
 FILE *trx;
 struct trx_header hdr;
 size_t bytes;
 int i;
 int err = 0;

 if (argc < 3) {
  fprintf(stderr, "No TRX file passed\n");
  err = -EINVAL;
  goto out;
 }
 trx_path = argv[2];

 optind = 3;
 otrx_extract_parse_options(argc, argv);

 trx = fopen(trx_path, "r");
 if (!trx) {
  fprintf(stderr, "Couldn't open %s\n", trx_path);
  err = -EACCES;
  goto out;
 }

 fseek(trx, trx_offset, SEEK_SET);
 bytes = fread(&hdr, 1, sizeof(hdr), trx);
 if (bytes != sizeof(hdr)) {
  fprintf(stderr, "Couldn't read %s header\n", trx_path);
  err = -EIO;
  goto err_close;
 }

 if (le32_to_cpu(hdr.magic) != TRX_MAGIC) {
  fprintf(stderr, "Invalid TRX magic: 0x%08x\n", le32_to_cpu(hdr.magic));
  err = -EINVAL;
  goto err_close;
 }

 for (i = 0; i < TRX_MAX_PARTS; i++) {
  size_t length;

  if (!partition[i])
   continue;
  if (!hdr.offset[i]) {
   printf("TRX doesn't contain partition %d, can't extract %s\n", i + 1, partition[i]);
   continue;
  }

  if (i + 1 >= TRX_MAX_PARTS || !hdr.offset[i + 1])
   length = le32_to_cpu(hdr.length) - le32_to_cpu(hdr.offset[i]);
  else
   length = le32_to_cpu(hdr.offset[i + 1]) - le32_to_cpu(hdr.offset[i]);

  otrx_extract_copy(trx, trx_offset + le32_to_cpu(hdr.offset[i]), length, partition[i]);
 }

err_close:
 fclose(trx);
out:
 return err;
}
