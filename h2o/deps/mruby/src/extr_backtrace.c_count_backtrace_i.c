
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backtrace_location {int * filename; } ;
typedef int mrb_state ;



__attribute__((used)) static void
count_backtrace_i(mrb_state *mrb,
                 struct backtrace_location *loc,
                 void *data)
{
  int *lenp = (int*)data;

  if (loc->filename == ((void*)0)) return;
  (*lenp)++;
}
