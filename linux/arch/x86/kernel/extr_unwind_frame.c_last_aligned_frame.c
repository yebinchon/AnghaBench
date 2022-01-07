
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {int dummy; } ;


 unsigned long* GCC_REALIGN_WORDS ;
 unsigned long* last_frame (struct unwind_state*) ;

__attribute__((used)) static inline unsigned long *last_aligned_frame(struct unwind_state *state)
{
 return last_frame(state) - GCC_REALIGN_WORDS;
}
