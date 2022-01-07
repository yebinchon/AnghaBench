
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int* backlog; } ;
typedef TYPE_1__ arena_decay_t ;


 int SMOOTHSTEP_BFP ;
 unsigned int SMOOTHSTEP_NSTEPS ;
 int* h_steps ;

__attribute__((used)) static size_t
arena_decay_backlog_npages_limit(const arena_decay_t *decay) {
 uint64_t sum;
 size_t npages_limit_backlog;
 unsigned i;






 sum = 0;
 for (i = 0; i < SMOOTHSTEP_NSTEPS; i++) {
  sum += decay->backlog[i] * h_steps[i];
 }
 npages_limit_backlog = (size_t)(sum >> SMOOTHSTEP_BFP);

 return npages_limit_backlog;
}
