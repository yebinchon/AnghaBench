
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clar_explicit {size_t suite_idx; int * filter; struct clar_explicit* next; } ;
struct TYPE_2__ {int total_errors; struct clar_explicit* explicit; } ;


 TYPE_1__ _clar ;
 size_t _clar_suite_count ;
 int * _clar_suites ;
 int clar_run_suite (int *,int *) ;

int
clar_test_run(void)
{
 size_t i;
 struct clar_explicit *explicit;

 if (_clar.explicit) {
  for (explicit = _clar.explicit; explicit; explicit = explicit->next)
   clar_run_suite(&_clar_suites[explicit->suite_idx], explicit->filter);
 } else {
  for (i = 0; i < _clar_suite_count; ++i)
   clar_run_suite(&_clar_suites[i], ((void*)0));
 }

 return _clar.total_errors;
}
