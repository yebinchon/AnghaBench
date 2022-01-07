
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ N ;
 scalar_t__ done ;
 scalar_t__ pipe_open ;
 scalar_t__ process_open ;
 int spawn () ;

__attribute__((used)) static void maybe_spawn(void) {
  if (process_open == 0 && pipe_open == 0) {
    done++;
    if (done < N) {
      spawn();
    }
  }
}
