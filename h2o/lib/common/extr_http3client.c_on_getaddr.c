
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_http3client_conn_t {int * getaddr_req; } ;
struct addrinfo {int ai_addrlen; int ai_addr; } ;
typedef int h2o_hostinfo_getaddr_req_t ;


 int abort () ;
 int assert (int) ;
 struct addrinfo* h2o_hostinfo_select_one (struct addrinfo*) ;
 int start_connect (struct st_h2o_http3client_conn_t*,int ,int ) ;

__attribute__((used)) static void on_getaddr(h2o_hostinfo_getaddr_req_t *getaddr_req, const char *errstr, struct addrinfo *res, void *_conn)
{
    struct st_h2o_http3client_conn_t *conn = _conn;

    assert(getaddr_req == conn->getaddr_req);
    conn->getaddr_req = ((void*)0);

    if (errstr != ((void*)0)) {

        abort();
    }

    struct addrinfo *selected = h2o_hostinfo_select_one(res);
    start_connect(conn, selected->ai_addr, selected->ai_addrlen);
}
