
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yrmcds_error ;
const char* yrmcds_strerror(yrmcds_error e) {
    switch( e ) {
    case 132:
        return "OK";
    case 129:
        return "Check errno for details";
    case 139:
        return "Bad argument";
    case 133:
        return "Host not found";
    case 128:
        return "Timeout";
    case 136:
        return "Connection was reset by peer";
    case 131:
        return "Failed to allocate memory";
    case 137:
        return "Failed to compress data";
    case 130:
        return "Received malformed packet";
    case 134:
        return "Not implemented";
    case 135:
        return "Connection is fixed for binary protocol";
    case 138:
        return "Bad key";
    default:
        return "Unknown error";
    };
}
