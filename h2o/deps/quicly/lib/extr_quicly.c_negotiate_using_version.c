
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int version; } ;
struct TYPE_7__ {TYPE_1__ super; } ;
typedef TYPE_2__ quicly_conn_t ;


 int QUICLY_PROBE (int ,TYPE_2__*,int ,int ) ;
 int VERSION_SWITCH ;
 int discard_sentmap_by_epoch (TYPE_2__*,unsigned int) ;
 int probe_now () ;

__attribute__((used)) static int negotiate_using_version(quicly_conn_t *conn, uint32_t version)
{

    conn->super.version = version;
    QUICLY_PROBE(VERSION_SWITCH, conn, probe_now(), version);


    return discard_sentmap_by_epoch(conn, ~0u);
}
