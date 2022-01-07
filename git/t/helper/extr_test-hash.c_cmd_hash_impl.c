
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_hash_algo {int rawsz; int (* final_fn ) (unsigned char*,int *) ;int (* update_fn ) (int *,char*,scalar_t__) ;int (* init_fn ) (int *) ;} ;
typedef scalar_t__ ssize_t ;
typedef int git_hash_ctx ;


 int GIT_MAX_HEXSZ ;
 int die (char*) ;
 int die_errno (char*) ;
 int exit (int ) ;
 int fprintf (int ,char*,unsigned int) ;
 int fwrite (unsigned char*,int,int ,int ) ;
 struct git_hash_algo* hash_algos ;
 int hash_to_hex_algop (unsigned char*,struct git_hash_algo const*) ;
 char* malloc (unsigned int) ;
 int puts (int ) ;
 int stderr ;
 int stdout ;
 int strcmp (char const*,char*) ;
 int strtoul (char const*,int *,int) ;
 int stub1 (int *) ;
 int stub2 (int *,char*,scalar_t__) ;
 int stub3 (unsigned char*,int *) ;
 scalar_t__ xread (int ,char*,unsigned int) ;

int cmd_hash_impl(int ac, const char **av, int algo)
{
 git_hash_ctx ctx;
 unsigned char hash[GIT_MAX_HEXSZ];
 unsigned bufsz = 8192;
 int binary = 0;
 char *buffer;
 const struct git_hash_algo *algop = &hash_algos[algo];

 if (ac == 2) {
  if (!strcmp(av[1], "-b"))
   binary = 1;
  else
   bufsz = strtoul(av[1], ((void*)0), 10) * 1024 * 1024;
 }

 if (!bufsz)
  bufsz = 8192;

 while ((buffer = malloc(bufsz)) == ((void*)0)) {
  fprintf(stderr, "bufsz %u is too big, halving...\n", bufsz);
  bufsz /= 2;
  if (bufsz < 1024)
   die("OOPS");
 }

 algop->init_fn(&ctx);

 while (1) {
  ssize_t sz, this_sz;
  char *cp = buffer;
  unsigned room = bufsz;
  this_sz = 0;
  while (room) {
   sz = xread(0, cp, room);
   if (sz == 0)
    break;
   if (sz < 0)
    die_errno("test-hash");
   this_sz += sz;
   cp += sz;
   room -= sz;
  }
  if (this_sz == 0)
   break;
  algop->update_fn(&ctx, buffer, this_sz);
 }
 algop->final_fn(hash, &ctx);

 if (binary)
  fwrite(hash, 1, algop->rawsz, stdout);
 else
  puts(hash_to_hex_algop(hash, algop));
 exit(0);
}
