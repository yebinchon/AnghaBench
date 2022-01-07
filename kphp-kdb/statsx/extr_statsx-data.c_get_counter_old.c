
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int created_at; struct counter* prev; } ;


 int check_version (long long,int) ;
 struct counter counter_wait ;
 int do_use (struct counter*) ;
 int fprintf (int ,char*,long long,int,int) ;
 struct counter* get_counter_f (long long,int ) ;
 int load_counter (long long,int ,int) ;
 int stderr ;
 int verbosity ;

__attribute__((used)) static struct counter *get_counter_old (long long cnt_id, int created_at, int use_aio) {
  if (verbosity >= 3) {
    fprintf (stderr, "get_counter_old (%lld, %d, %d)\n", cnt_id, created_at, use_aio);
  }

  if (use_aio > 0) {
    if (!check_version (cnt_id, created_at)) { return 0; }

    struct counter *D = get_counter_old (cnt_id, created_at, -1);
    if (D) { return D;}

  }


  struct counter *C = get_counter_f (cnt_id, 0);
  if (!C) { return C;}
  if (use_aio >= 0) {
    int res = load_counter (cnt_id, 0, use_aio);
    if (res == -1 && !C) {
      return 0;
    }
    if (res == -2) {
      return &counter_wait;
    }
  }
  if (!created_at) {
    do_use (C);
    return C;
  }


  while (C) {
    if (C->created_at < created_at) {



      return 0;
    }
    if (C->created_at == created_at) { break; }
    C = C->prev;
  }





  if (C) { do_use (C); }
  return C;
}
