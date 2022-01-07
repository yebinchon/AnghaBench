
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG308_LOAD_CLEAR ;
 int __bpon () ;
 int diag308 (int ,int *) ;

__attribute__((used)) static void __ipl_run(void *unused)
{
 __bpon();
 diag308(DIAG308_LOAD_CLEAR, ((void*)0));
}
