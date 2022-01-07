
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_token_t ;


 int const* H2O_TOKEN_ACCEPT ;
 int const* H2O_TOKEN_ACCEPT_CHARSET ;
 int const* H2O_TOKEN_ACCEPT_ENCODING ;
 int const* H2O_TOKEN_ACCEPT_LANGUAGE ;
 int const* H2O_TOKEN_ACCEPT_RANGES ;
 int const* H2O_TOKEN_ACCESS_CONTROL_ALLOW_CREDENTIALS ;
 int const* H2O_TOKEN_ACCESS_CONTROL_ALLOW_HEADERS ;
 int const* H2O_TOKEN_ACCESS_CONTROL_ALLOW_METHODS ;
 int const* H2O_TOKEN_ACCESS_CONTROL_ALLOW_ORIGIN ;
 int const* H2O_TOKEN_ACCESS_CONTROL_EXPOSE_HEADERS ;
 int const* H2O_TOKEN_ACCESS_CONTROL_REQUEST_HEADERS ;
 int const* H2O_TOKEN_ACCESS_CONTROL_REQUEST_METHOD ;
 int const* H2O_TOKEN_AGE ;
 int const* H2O_TOKEN_ALLOW ;
 int const* H2O_TOKEN_ALT_SVC ;
 int const* H2O_TOKEN_AUTHORITY ;
 int const* H2O_TOKEN_AUTHORIZATION ;
 int const* H2O_TOKEN_CACHE_CONTROL ;
 int const* H2O_TOKEN_CACHE_DIGEST ;
 int const* H2O_TOKEN_CONNECTION ;
 int const* H2O_TOKEN_CONTENT_DISPOSITION ;
 int const* H2O_TOKEN_CONTENT_ENCODING ;
 int const* H2O_TOKEN_CONTENT_LANGUAGE ;
 int const* H2O_TOKEN_CONTENT_LENGTH ;
 int const* H2O_TOKEN_CONTENT_LOCATION ;
 int const* H2O_TOKEN_CONTENT_RANGE ;
 int const* H2O_TOKEN_CONTENT_SECURITY_POLICY ;
 int const* H2O_TOKEN_CONTENT_TYPE ;
 int const* H2O_TOKEN_COOKIE ;
 int const* H2O_TOKEN_DATE ;
 int const* H2O_TOKEN_EARLY_DATA ;
 int const* H2O_TOKEN_ETAG ;
 int const* H2O_TOKEN_EXPECT ;
 int const* H2O_TOKEN_EXPECT_CT ;
 int const* H2O_TOKEN_EXPIRES ;
 int const* H2O_TOKEN_FORWARDED ;
 int const* H2O_TOKEN_FROM ;
 int const* H2O_TOKEN_HOST ;
 int const* H2O_TOKEN_HTTP2_SETTINGS ;
 int const* H2O_TOKEN_IF_MATCH ;
 int const* H2O_TOKEN_IF_MODIFIED_SINCE ;
 int const* H2O_TOKEN_IF_NONE_MATCH ;
 int const* H2O_TOKEN_IF_RANGE ;
 int const* H2O_TOKEN_IF_UNMODIFIED_SINCE ;
 int const* H2O_TOKEN_KEEP_ALIVE ;
 int const* H2O_TOKEN_LAST_MODIFIED ;
 int const* H2O_TOKEN_LINK ;
 int const* H2O_TOKEN_LOCATION ;
 int const* H2O_TOKEN_MAX_FORWARDS ;
 int const* H2O_TOKEN_METHOD ;
 int const* H2O_TOKEN_ORIGIN ;
 int const* H2O_TOKEN_PATH ;
 int const* H2O_TOKEN_PROXY_AUTHENTICATE ;
 int const* H2O_TOKEN_PROXY_AUTHORIZATION ;
 int const* H2O_TOKEN_PURPOSE ;
 int const* H2O_TOKEN_RANGE ;
 int const* H2O_TOKEN_REFERER ;
 int const* H2O_TOKEN_REFRESH ;
 int const* H2O_TOKEN_RETRY_AFTER ;
 int const* H2O_TOKEN_SCHEME ;
 int const* H2O_TOKEN_SERVER ;
 int const* H2O_TOKEN_SET_COOKIE ;
 int const* H2O_TOKEN_STATUS ;
 int const* H2O_TOKEN_STRICT_TRANSPORT_SECURITY ;
 int const* H2O_TOKEN_TE ;
 int const* H2O_TOKEN_TIMING_ALLOW_ORIGIN ;
 int const* H2O_TOKEN_TRANSFER_ENCODING ;
 int const* H2O_TOKEN_UPGRADE ;
 int const* H2O_TOKEN_UPGRADE_INSECURE_REQUESTS ;
 int const* H2O_TOKEN_USER_AGENT ;
 int const* H2O_TOKEN_VARY ;
 int const* H2O_TOKEN_VIA ;
 int const* H2O_TOKEN_WWW_AUTHENTICATE ;
 int const* H2O_TOKEN_X_COMPRESS_HINT ;
 int const* H2O_TOKEN_X_CONTENT_TYPE_OPTIONS ;
 int const* H2O_TOKEN_X_FORWARDED_FOR ;
 int const* H2O_TOKEN_X_FRAME_OPTIONS ;
 int const* H2O_TOKEN_X_REPROXY_URL ;
 int const* H2O_TOKEN_X_TRAFFIC ;
 int const* H2O_TOKEN_X_XSS_PROTECTION ;
 int memcmp (char const*,char*,int) ;

const h2o_token_t *h2o_lookup_token(const char *name, size_t len)
{
    switch (len) {
    case 2:
        switch (name[1]) {
        case 'e':
            if (memcmp(name, "t", 1) == 0)
                return H2O_TOKEN_TE;
            break;
        }
        break;
    case 3:
        switch (name[2]) {
        case 'a':
            if (memcmp(name, "vi", 2) == 0)
                return H2O_TOKEN_VIA;
            break;
        case 'e':
            if (memcmp(name, "ag", 2) == 0)
                return H2O_TOKEN_AGE;
            break;
        }
        break;
    case 4:
        switch (name[3]) {
        case 'e':
            if (memcmp(name, "dat", 3) == 0)
                return H2O_TOKEN_DATE;
            break;
        case 'g':
            if (memcmp(name, "eta", 3) == 0)
                return H2O_TOKEN_ETAG;
            break;
        case 'k':
            if (memcmp(name, "lin", 3) == 0)
                return H2O_TOKEN_LINK;
            break;
        case 'm':
            if (memcmp(name, "fro", 3) == 0)
                return H2O_TOKEN_FROM;
            break;
        case 't':
            if (memcmp(name, "hos", 3) == 0)
                return H2O_TOKEN_HOST;
            break;
        case 'y':
            if (memcmp(name, "var", 3) == 0)
                return H2O_TOKEN_VARY;
            break;
        }
        break;
    case 5:
        switch (name[4]) {
        case 'e':
            if (memcmp(name, "rang", 4) == 0)
                return H2O_TOKEN_RANGE;
            break;
        case 'h':
            if (memcmp(name, ":pat", 4) == 0)
                return H2O_TOKEN_PATH;
            break;
        case 'w':
            if (memcmp(name, "allo", 4) == 0)
                return H2O_TOKEN_ALLOW;
            break;
        }
        break;
    case 6:
        switch (name[5]) {
        case 'e':
            if (memcmp(name, "cooki", 5) == 0)
                return H2O_TOKEN_COOKIE;
            break;
        case 'n':
            if (memcmp(name, "origi", 5) == 0)
                return H2O_TOKEN_ORIGIN;
            break;
        case 'r':
            if (memcmp(name, "serve", 5) == 0)
                return H2O_TOKEN_SERVER;
            break;
        case 't':
            if (memcmp(name, "accep", 5) == 0)
                return H2O_TOKEN_ACCEPT;
            if (memcmp(name, "expec", 5) == 0)
                return H2O_TOKEN_EXPECT;
            break;
        }
        break;
    case 7:
        switch (name[6]) {
        case 'c':
            if (memcmp(name, "alt-sv", 6) == 0)
                return H2O_TOKEN_ALT_SVC;
            break;
        case 'd':
            if (memcmp(name, ":metho", 6) == 0)
                return H2O_TOKEN_METHOD;
            break;
        case 'e':
            if (memcmp(name, ":schem", 6) == 0)
                return H2O_TOKEN_SCHEME;
            if (memcmp(name, "purpos", 6) == 0)
                return H2O_TOKEN_PURPOSE;
            if (memcmp(name, "upgrad", 6) == 0)
                return H2O_TOKEN_UPGRADE;
            break;
        case 'h':
            if (memcmp(name, "refres", 6) == 0)
                return H2O_TOKEN_REFRESH;
            break;
        case 'r':
            if (memcmp(name, "refere", 6) == 0)
                return H2O_TOKEN_REFERER;
            break;
        case 's':
            if (memcmp(name, ":statu", 6) == 0)
                return H2O_TOKEN_STATUS;
            if (memcmp(name, "expire", 6) == 0)
                return H2O_TOKEN_EXPIRES;
            break;
        }
        break;
    case 8:
        switch (name[7]) {
        case 'e':
            if (memcmp(name, "if-rang", 7) == 0)
                return H2O_TOKEN_IF_RANGE;
            break;
        case 'h':
            if (memcmp(name, "if-matc", 7) == 0)
                return H2O_TOKEN_IF_MATCH;
            break;
        case 'n':
            if (memcmp(name, "locatio", 7) == 0)
                return H2O_TOKEN_LOCATION;
            break;
        }
        break;
    case 9:
        switch (name[8]) {
        case 'c':
            if (memcmp(name, "x-traffi", 8) == 0)
                return H2O_TOKEN_X_TRAFFIC;
            break;
        case 'd':
            if (memcmp(name, "forwarde", 8) == 0)
                return H2O_TOKEN_FORWARDED;
            break;
        case 't':
            if (memcmp(name, "expect-c", 8) == 0)
                return H2O_TOKEN_EXPECT_CT;
            break;
        }
        break;
    case 10:
        switch (name[9]) {
        case 'a':
            if (memcmp(name, "early-dat", 9) == 0)
                return H2O_TOKEN_EARLY_DATA;
            break;
        case 'e':
            if (memcmp(name, "keep-aliv", 9) == 0)
                return H2O_TOKEN_KEEP_ALIVE;
            if (memcmp(name, "set-cooki", 9) == 0)
                return H2O_TOKEN_SET_COOKIE;
            break;
        case 'n':
            if (memcmp(name, "connectio", 9) == 0)
                return H2O_TOKEN_CONNECTION;
            break;
        case 't':
            if (memcmp(name, "user-agen", 9) == 0)
                return H2O_TOKEN_USER_AGENT;
            break;
        case 'y':
            if (memcmp(name, ":authorit", 9) == 0)
                return H2O_TOKEN_AUTHORITY;
            break;
        }
        break;
    case 11:
        switch (name[10]) {
        case 'r':
            if (memcmp(name, "retry-afte", 10) == 0)
                return H2O_TOKEN_RETRY_AFTER;
            break;
        }
        break;
    case 12:
        switch (name[11]) {
        case 'e':
            if (memcmp(name, "content-typ", 11) == 0)
                return H2O_TOKEN_CONTENT_TYPE;
            break;
        case 's':
            if (memcmp(name, "max-forward", 11) == 0)
                return H2O_TOKEN_MAX_FORWARDS;
            break;
        case 't':
            if (memcmp(name, "cache-diges", 11) == 0)
                return H2O_TOKEN_CACHE_DIGEST;
            break;
        }
        break;
    case 13:
        switch (name[12]) {
        case 'd':
            if (memcmp(name, "last-modifie", 12) == 0)
                return H2O_TOKEN_LAST_MODIFIED;
            break;
        case 'e':
            if (memcmp(name, "content-rang", 12) == 0)
                return H2O_TOKEN_CONTENT_RANGE;
            break;
        case 'h':
            if (memcmp(name, "if-none-matc", 12) == 0)
                return H2O_TOKEN_IF_NONE_MATCH;
            break;
        case 'l':
            if (memcmp(name, "cache-contro", 12) == 0)
                return H2O_TOKEN_CACHE_CONTROL;
            if (memcmp(name, "x-reproxy-ur", 12) == 0)
                return H2O_TOKEN_X_REPROXY_URL;
            break;
        case 'n':
            if (memcmp(name, "authorizatio", 12) == 0)
                return H2O_TOKEN_AUTHORIZATION;
            break;
        case 's':
            if (memcmp(name, "accept-range", 12) == 0)
                return H2O_TOKEN_ACCEPT_RANGES;
            break;
        }
        break;
    case 14:
        switch (name[13]) {
        case 'h':
            if (memcmp(name, "content-lengt", 13) == 0)
                return H2O_TOKEN_CONTENT_LENGTH;
            break;
        case 's':
            if (memcmp(name, "http2-setting", 13) == 0)
                return H2O_TOKEN_HTTP2_SETTINGS;
            break;
        case 't':
            if (memcmp(name, "accept-charse", 13) == 0)
                return H2O_TOKEN_ACCEPT_CHARSET;
            break;
        }
        break;
    case 15:
        switch (name[14]) {
        case 'e':
            if (memcmp(name, "accept-languag", 14) == 0)
                return H2O_TOKEN_ACCEPT_LANGUAGE;
            break;
        case 'g':
            if (memcmp(name, "accept-encodin", 14) == 0)
                return H2O_TOKEN_ACCEPT_ENCODING;
            break;
        case 'r':
            if (memcmp(name, "x-forwarded-fo", 14) == 0)
                return H2O_TOKEN_X_FORWARDED_FOR;
            break;
        case 's':
            if (memcmp(name, "x-frame-option", 14) == 0)
                return H2O_TOKEN_X_FRAME_OPTIONS;
            break;
        case 't':
            if (memcmp(name, "x-compress-hin", 14) == 0)
                return H2O_TOKEN_X_COMPRESS_HINT;
            break;
        }
        break;
    case 16:
        switch (name[15]) {
        case 'e':
            if (memcmp(name, "content-languag", 15) == 0)
                return H2O_TOKEN_CONTENT_LANGUAGE;
            if (memcmp(name, "www-authenticat", 15) == 0)
                return H2O_TOKEN_WWW_AUTHENTICATE;
            break;
        case 'g':
            if (memcmp(name, "content-encodin", 15) == 0)
                return H2O_TOKEN_CONTENT_ENCODING;
            break;
        case 'n':
            if (memcmp(name, "content-locatio", 15) == 0)
                return H2O_TOKEN_CONTENT_LOCATION;
            if (memcmp(name, "x-xss-protectio", 15) == 0)
                return H2O_TOKEN_X_XSS_PROTECTION;
            break;
        }
        break;
    case 17:
        switch (name[16]) {
        case 'e':
            if (memcmp(name, "if-modified-sinc", 16) == 0)
                return H2O_TOKEN_IF_MODIFIED_SINCE;
            break;
        case 'g':
            if (memcmp(name, "transfer-encodin", 16) == 0)
                return H2O_TOKEN_TRANSFER_ENCODING;
            break;
        }
        break;
    case 18:
        switch (name[17]) {
        case 'e':
            if (memcmp(name, "proxy-authenticat", 17) == 0)
                return H2O_TOKEN_PROXY_AUTHENTICATE;
            break;
        }
        break;
    case 19:
        switch (name[18]) {
        case 'e':
            if (memcmp(name, "if-unmodified-sinc", 18) == 0)
                return H2O_TOKEN_IF_UNMODIFIED_SINCE;
            break;
        case 'n':
            if (memcmp(name, "content-dispositio", 18) == 0)
                return H2O_TOKEN_CONTENT_DISPOSITION;
            if (memcmp(name, "proxy-authorizatio", 18) == 0)
                return H2O_TOKEN_PROXY_AUTHORIZATION;
            if (memcmp(name, "timing-allow-origi", 18) == 0)
                return H2O_TOKEN_TIMING_ALLOW_ORIGIN;
            break;
        }
        break;
    case 22:
        switch (name[21]) {
        case 's':
            if (memcmp(name, "x-content-type-option", 21) == 0)
                return H2O_TOKEN_X_CONTENT_TYPE_OPTIONS;
            break;
        }
        break;
    case 23:
        switch (name[22]) {
        case 'y':
            if (memcmp(name, "content-security-polic", 22) == 0)
                return H2O_TOKEN_CONTENT_SECURITY_POLICY;
            break;
        }
        break;
    case 25:
        switch (name[24]) {
        case 's':
            if (memcmp(name, "upgrade-insecure-request", 24) == 0)
                return H2O_TOKEN_UPGRADE_INSECURE_REQUESTS;
            break;
        case 'y':
            if (memcmp(name, "strict-transport-securit", 24) == 0)
                return H2O_TOKEN_STRICT_TRANSPORT_SECURITY;
            break;
        }
        break;
    case 27:
        switch (name[26]) {
        case 'n':
            if (memcmp(name, "access-control-allow-origi", 26) == 0)
                return H2O_TOKEN_ACCESS_CONTROL_ALLOW_ORIGIN;
            break;
        }
        break;
    case 28:
        switch (name[27]) {
        case 's':
            if (memcmp(name, "access-control-allow-header", 27) == 0)
                return H2O_TOKEN_ACCESS_CONTROL_ALLOW_HEADERS;
            if (memcmp(name, "access-control-allow-method", 27) == 0)
                return H2O_TOKEN_ACCESS_CONTROL_ALLOW_METHODS;
            break;
        }
        break;
    case 29:
        switch (name[28]) {
        case 'd':
            if (memcmp(name, "access-control-request-metho", 28) == 0)
                return H2O_TOKEN_ACCESS_CONTROL_REQUEST_METHOD;
            break;
        case 's':
            if (memcmp(name, "access-control-expose-header", 28) == 0)
                return H2O_TOKEN_ACCESS_CONTROL_EXPOSE_HEADERS;
            break;
        }
        break;
    case 30:
        switch (name[29]) {
        case 's':
            if (memcmp(name, "access-control-request-header", 29) == 0)
                return H2O_TOKEN_ACCESS_CONTROL_REQUEST_HEADERS;
            break;
        }
        break;
    case 32:
        switch (name[31]) {
        case 's':
            if (memcmp(name, "access-control-allow-credential", 31) == 0)
                return H2O_TOKEN_ACCESS_CONTROL_ALLOW_CREDENTIALS;
            break;
        }
        break;
    }

    return ((void*)0);
}
