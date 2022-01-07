
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int olen ;
typedef int FILE ;


 int SEEK_END ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int fread (scalar_t__*,int,int,int *) ;
 scalar_t__ fseek (int *,long,int ) ;
 long ftell (int *) ;
 scalar_t__ get_unaligned_le32 (scalar_t__*) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int stderr ;

int main(int argc, char *argv[])
{
 uint32_t olen;
 long ilen;
 FILE *f = ((void*)0);
 int retval = 1;

 if (argc < 2) {
  fprintf(stderr, "Usage: %s compressed_file\n", argv[0]);
  goto bail;
 }



 f = fopen(argv[1], "r");
 if (!f) {
  perror(argv[1]);
  goto bail;
 }


 if (fseek(f, -4L, SEEK_END)) {
  perror(argv[1]);
 }

 if (fread(&olen, sizeof(olen), 1, f) != 1) {
  perror(argv[1]);
  goto bail;
 }

 ilen = ftell(f);
 olen = get_unaligned_le32(&olen);

 printf(".section \".rodata..compressed\",\"a\",@progbits\n");
 printf(".globl z_input_len\n");
 printf("z_input_len = %lu\n", ilen);
 printf(".globl z_output_len\n");
 printf("z_output_len = %lu\n", (unsigned long)olen);

 printf(".globl input_data, input_data_end\n");
 printf("input_data:\n");
 printf(".incbin \"%s\"\n", argv[1]);
 printf("input_data_end:\n");

 retval = 0;
bail:
 if (f)
  fclose(f);
 return retval;
}
