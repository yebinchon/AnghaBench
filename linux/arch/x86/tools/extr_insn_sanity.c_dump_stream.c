
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn {int dummy; } ;
typedef int FILE ;


 int MAX_INSN_SIZE ;
 int dump_insn (int *,struct insn*) ;
 int fprintf (int *,char*,...) ;
 int input_file ;
 char* prog ;
 int seed ;

__attribute__((used)) static void dump_stream(FILE *fp, const char *msg, unsigned long nr_iter,
   unsigned char *insn_buff, struct insn *insn)
{
 int i;

 fprintf(fp, "%s:\n", msg);

 dump_insn(fp, insn);

 fprintf(fp, "You can reproduce this with below command(s);\n");


 fprintf(fp, " $ echo ");
 for (i = 0; i < MAX_INSN_SIZE; i++)
  fprintf(fp, " %02x", insn_buff[i]);
 fprintf(fp, " | %s -i -\n", prog);

 if (!input_file) {
  fprintf(fp, "Or \n");

  fprintf(fp, " $ %s -s 0x%x,%lu\n", prog, seed, nr_iter);
 }
}
