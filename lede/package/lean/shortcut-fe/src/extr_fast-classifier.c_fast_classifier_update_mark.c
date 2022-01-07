
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfe_connection_mark {int mark; int protocol; int dest_port; int src_port; int dest_ip; int src_ip; } ;
struct sfe_connection {TYPE_1__* sic; } ;
struct TYPE_2__ {int mark; } ;


 struct sfe_connection* fast_classifier_find_conn (int *,int *,int ,int ,int ,int) ;
 int sfe_connections_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void fast_classifier_update_mark(struct sfe_connection_mark *mark, bool is_v4)
{
 struct sfe_connection *conn;

 spin_lock_bh(&sfe_connections_lock);

 conn = fast_classifier_find_conn(&mark->src_ip, &mark->dest_ip,
      mark->src_port, mark->dest_port,
      mark->protocol, is_v4);
 if (conn) {
  conn->sic->mark = mark->mark;
 }

 spin_unlock_bh(&sfe_connections_lock);
}
