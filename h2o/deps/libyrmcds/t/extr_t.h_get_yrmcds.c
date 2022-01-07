
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yrmcds ;
typedef int uint16_t ;


 scalar_t__ atoi (char*) ;
 int check_error (int ) ;
 char* getenv (char*) ;
 int yrmcds_connect (int *,char const*,int) ;

__attribute__((used)) static yrmcds* get_yrmcds(yrmcds* c) {
    const char* host = getenv("YRMCDS_HOST");
    if( host == ((void*)0) ) {
        return ((void*)0);
    }
    uint16_t port = 11211;
    if( getenv("YRMCDS_PORT") ) {
        port = (uint16_t)atoi(getenv("YRMCDS_PORT"));
    }

    check_error( yrmcds_connect(c, host, port) );
    return c;
}
