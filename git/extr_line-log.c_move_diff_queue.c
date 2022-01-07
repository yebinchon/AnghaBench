
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_queue_struct {int dummy; } ;


 int DIFF_QUEUE_CLEAR (struct diff_queue_struct*) ;
 int assert (int) ;
 int memcpy (struct diff_queue_struct*,struct diff_queue_struct*,int) ;

__attribute__((used)) static void move_diff_queue(struct diff_queue_struct *dst,
       struct diff_queue_struct *src)
{
 assert(src != dst);
 memcpy(dst, src, sizeof(struct diff_queue_struct));
 DIFF_QUEUE_CLEAR(src);
}
