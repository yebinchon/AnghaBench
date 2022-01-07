
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int handle_memory_error () ;

__attribute__((used)) static void mem_error_handler(struct work_struct *work)
{
 handle_memory_error();
}
