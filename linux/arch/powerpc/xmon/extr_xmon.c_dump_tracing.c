
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_ALL ;
 int DUMP_ORIG ;
 int ftrace_dump (int ) ;
 int inchar () ;

__attribute__((used)) static void dump_tracing(void)
{
 int c;

 c = inchar();
 if (c == 'c')
  ftrace_dump(DUMP_ORIG);
 else
  ftrace_dump(DUMP_ALL);
}
