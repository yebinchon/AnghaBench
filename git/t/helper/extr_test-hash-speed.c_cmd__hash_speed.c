
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_hash_algo {char* name; } ;
typedef int git_hash_ctx ;
typedef double clock_t ;


 int ARRAY_SIZE (unsigned int*) ;
 double CLOCKS_PER_SEC ;
 int GIT_HASH_NALGOS ;
 int GIT_MAX_RAWSZ ;
 double NUM_SECONDS ;
 double clock () ;
 int compute_hash (struct git_hash_algo const*,int *,unsigned char*,void*,unsigned int) ;
 int die (char*) ;
 int exit (int ) ;
 int free (void*) ;
 struct git_hash_algo* hash_algos ;
 int printf (char*,...) ;
 int strcmp (char const*,char*) ;
 void* xcalloc (int,unsigned int) ;

int cmd__hash_speed(int ac, const char **av)
{
 git_hash_ctx ctx;
 unsigned char hash[GIT_MAX_RAWSZ];
 clock_t initial, start, end;
 unsigned bufsizes[] = { 64, 256, 1024, 8192, 16384 };
 int i;
 void *p;
 const struct git_hash_algo *algo = ((void*)0);

 if (ac == 2) {
  for (i = 1; i < GIT_HASH_NALGOS; i++) {
   if (!strcmp(av[1], hash_algos[i].name)) {
    algo = &hash_algos[i];
    break;
   }
  }
 }
 if (!algo)
  die("usage: test-tool hash-speed algo_name");


 initial = clock();

 printf("algo: %s\n", algo->name);

 for (i = 0; i < ARRAY_SIZE(bufsizes); i++) {
  unsigned long j, kb;
  double kb_per_sec;
  p = xcalloc(1, bufsizes[i]);
  start = end = clock() - initial;
  for (j = 0; ((end - start) / CLOCKS_PER_SEC) < NUM_SECONDS; j++) {
   compute_hash(algo, &ctx, hash, p, bufsizes[i]);





   if (!(j & 127))
    end = clock() - initial;
  }
  kb = j * bufsizes[i];
  kb_per_sec = kb / (1024 * ((double)end - start) / CLOCKS_PER_SEC);
  printf("size %u: %lu iters; %lu KiB; %0.2f KiB/s\n", bufsizes[i], j, kb, kb_per_sec);
  free(p);
 }

 exit(0);
}
