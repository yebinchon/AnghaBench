
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_buffer {int dummy; } ;


 int kfree (struct pt_buffer*) ;
 int pt_buffer_fini_topa (struct pt_buffer*) ;

__attribute__((used)) static void pt_buffer_free_aux(void *data)
{
 struct pt_buffer *buf = data;

 pt_buffer_fini_topa(buf);
 kfree(buf);
}
