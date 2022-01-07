
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_emerg (char*,void*,char*,void*) ;

void print_trace(void *data, unsigned long addr, int reliable)
{
 pr_emerg("[<%p>] %s%pS\n", (void *) addr, reliable ? "" : "? ",
        (void *) addr);
}
