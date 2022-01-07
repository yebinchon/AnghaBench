
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn {scalar_t__ next_byte; scalar_t__ kaddr; } ;
typedef int insn_buff ;


 int INSN_NOP ;
 int MAX_INSN_SIZE ;
 int dump_insn (int ,struct insn*) ;
 int dump_stream (int ,char*,unsigned long,unsigned char*,struct insn*) ;
 int fprintf (int ,char*,char*,char*,int,char*,int,int) ;
 scalar_t__ generate_insn (unsigned char*) ;
 scalar_t__ input_file ;
 int insn_complete (struct insn*) ;
 int insn_get_length (struct insn*) ;
 int insn_init (struct insn*,unsigned char*,int,int ) ;
 unsigned long iter_end ;
 unsigned long iter_start ;
 int memset (unsigned char*,int ,int) ;
 int parse_args (int,char**) ;
 char* prog ;
 int seed ;
 int stderr ;
 int stdout ;
 int verbose ;
 int x86_64 ;

int main(int argc, char **argv)
{
 struct insn insn;
 int insns = 0;
 int errors = 0;
 unsigned long i;
 unsigned char insn_buff[MAX_INSN_SIZE * 2];

 parse_args(argc, argv);


 memset(insn_buff + MAX_INSN_SIZE, INSN_NOP, MAX_INSN_SIZE);

 for (i = 0; i < iter_end; i++) {
  if (generate_insn(insn_buff) <= 0)
   break;

  if (i < iter_start)
   continue;


  insn_init(&insn, insn_buff, sizeof(insn_buff), x86_64);
  insn_get_length(&insn);

  if (insn.next_byte <= insn.kaddr ||
      insn.kaddr + MAX_INSN_SIZE < insn.next_byte) {

   dump_stream(stderr, "Error: Found an access violation", i, insn_buff, &insn);
   errors++;
  } else if (verbose && !insn_complete(&insn))
   dump_stream(stdout, "Info: Found an undecodable input", i, insn_buff, &insn);
  else if (verbose >= 2)
   dump_insn(stdout, &insn);
  insns++;
 }

 fprintf((errors) ? stderr : stdout,
  "%s: %s: decoded and checked %d %s instructions with %d errors (seed:0x%x)\n",
  prog,
  (errors) ? "Failure" : "Success",
  insns,
  (input_file) ? "given" : "random",
  errors,
  seed);

 return errors ? 1 : 0;
}
