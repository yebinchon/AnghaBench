
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct io_context {int dummy; } ;
typedef int gfp_t ;
struct TYPE_3__ {struct io_context* io_context; } ;


 int WARN_ON_ONCE (int ) ;
 int create_task_io_context (TYPE_1__*,int ,int) ;
 TYPE_1__* current ;
 int irqs_disabled () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct io_context *create_io_context(gfp_t gfp_mask, int node)
{
 WARN_ON_ONCE(irqs_disabled());
 if (unlikely(!current->io_context))
  create_task_io_context(current, gfp_mask, node);
 return current->io_context;
}
