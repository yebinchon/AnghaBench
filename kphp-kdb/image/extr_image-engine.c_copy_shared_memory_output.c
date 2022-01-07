
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_request {int size; scalar_t__ timeout; scalar_t__* prog; } ;
struct forth_output {long long const prog_id; int l; scalar_t__ working_time; int s; } ;


 struct forth_output* MAP_FAILED ;
 int MAP_SHARED ;
 int MAX_SHARED_MEMORY_SIZE ;
 int PROT_READ ;
 int all_results_memory ;
 int assert (scalar_t__*) ;
 int errno ;
 int forth_output_errors ;
 int forth_request_run_output_gc () ;
 int last_mmap_errno ;
 scalar_t__* malloc (int) ;
 scalar_t__ max_task_time ;
 int memcpy (scalar_t__*,int ,int) ;
 scalar_t__ mmap (int *,int ,int ,int ,int,int ) ;
 int mmap_errors ;
 int munmap (struct forth_output*,int ) ;
 scalar_t__ now ;
 scalar_t__ result_living_time ;
 scalar_t__* strdup (char*) ;
 int vkprintf (int,char*) ;

__attribute__((used)) static void copy_shared_memory_output (const long long prog_id, int shm_descriptor, struct forth_request *E) {
  if (shm_descriptor < 0) { return; }
  struct forth_output *S = (struct forth_output *) mmap (((void*)0), MAX_SHARED_MEMORY_SIZE, PROT_READ, MAP_SHARED, shm_descriptor, 0);
  if (S == MAP_FAILED) {
    last_mmap_errno = errno;
    S = ((void*)0);
    vkprintf (1, "copy_shared_memory_output, mmap failed\n%m\n");
    mmap_errors++;
  }
  if (S != ((void*)0)) {
    if (S->prog_id != prog_id || (S->l < 0 || S->l > (int) sizeof (S->s))) {
      forth_output_errors++;
      E->size = 0;
      E->prog = strdup ("");
      assert (E->prog);
    } else {
      if (max_task_time < S->working_time) {
        max_task_time = S->working_time;
      }
      E->size = S->l;
      E->prog = malloc (E->size + 1);
      assert (E->prog);
      memcpy (E->prog, S->s, E->size);
      E->prog[E->size] = 0;
    }
    E->timeout = now + result_living_time;
    munmap (S, MAX_SHARED_MEMORY_SIZE);
    all_results_memory += E->size + 1;
    forth_request_run_output_gc ();
  }
}
