
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int (* sql_ready_to_write ) (struct connection*) ;} ;


 TYPE_1__* SQLC_FUNC (struct connection*) ;
 int stub1 (struct connection*) ;

__attribute__((used)) static int sqlc_ready_to_write (struct connection *c) {
  if (SQLC_FUNC(c)->sql_ready_to_write) {
    SQLC_FUNC(c)->sql_ready_to_write (c);
  }
  return 0;
}
