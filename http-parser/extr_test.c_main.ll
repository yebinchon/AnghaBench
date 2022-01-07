; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i8*, i8*, i32, i32, i8*, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"http_parser v%u.%u.%u (0x%06lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"sizeof(http_parser) = %u\0A\00", align 1
@HTTP_REQUEST = common dso_local global i32 0, align 4
@HTTP_RESPONSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"POST / HTTP/1.1\0D\0AContent-Length:\0D\0A\0D\0A\00", align 1
@HPE_INVALID_CONTENT_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"POST / HTTP/1.1\0D\0AContent-Length:  42 \0D\0A\0D\0A\00", align 1
@HPE_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"POST / HTTP/1.1\0D\0AContent-Length: 4 2\0D\0A\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"POST / HTTP/1.1\0D\0AContent-Length: 13 37\0D\0A\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"POST / HTTP/1.1\0D\0AContent-Length:  42\0D\0A Hello world!\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"POST / HTTP/1.1\0D\0AContent-Length:  42\0D\0A \0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"HTP/1.1 200 OK\0D\0A\0D\0A\00", align 1
@HPE_INVALID_VERSION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"HTTP/01.1 200 OK\0D\0A\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"HTTP/11.1 200 OK\0D\0A\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"HTTP/1.01 200 OK\0D\0A\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"HTTP/1.1\09200 OK\0D\0A\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"\0DHTTP/1.1\09200 OK\0D\0A\0D\0A\00", align 1
@responses = common dso_local global %struct.message* null, align 8
@NO_HEADERS_NO_BODY_404 = common dso_local global i64 0, align 8
@TRAILING_SPACE_ON_CHUNKED_BODY = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [74 x i8] c"HTTP/1.0 200 OK\0D\0ATransfer-Encoding: chunked\0D\0AContent-Type: text/plain\0D\0A\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"large chunked\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@MAX_CHUNKS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [24 x i8] c"response scan 1/2      \00", align 1
@NO_BODY_HTTP10_KA_204 = common dso_local global i64 0, align 8
@NO_REASON_PHRASE = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [24 x i8] c"response scan 2/2      \00", align 1
@BONJOUR_MADAME_FR = common dso_local global i64 0, align 8
@UNDERSTORE_HEADER_KEY = common dso_local global i64 0, align 8
@NO_CARRIAGE_RET = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [15 x i8] c"responses okay\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"GET / IHTTP/1.0\0D\0A\0D\0A\00", align 1
@HPE_INVALID_CONSTANT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"GET / ICE/1.0\0D\0A\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"GET / HTP/1.1\0D\0A\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"GET / HTTP/01.1\0D\0A\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"GET / HTTP/11.1\0D\0A\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"GET / HTTP/1.01\0D\0A\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"GET / HTTP/1.0\0D\0AHello: w\01rld\0D\0A\0D\0A\00", align 1
@HPE_INVALID_HEADER_TOKEN = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [37 x i8] c"GET / HTTP/1.0\0D\0AHello: woooo\02rld\0D\0A\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"GET / HTTP/1.1\0D\0ATest: D\C3\BCsseldorf\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [69 x i8] c"GET / HTTP/1.1\0D\0AContent-Type: text/plain\0D\0AContent-Length: 6\0D\0A\0D\0Afooba\00", align 1
@main.all_methods = internal global [33 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* null], align 16
@.str.31 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"TRACE\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"MKCOL\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"MOVE\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"PROPFIND\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"PROPPATCH\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"SEARCH\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"UNLOCK\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"BIND\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"REBIND\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"UNBIND\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"ACL\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"MKACTIVITY\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"CHECKOUT\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"MERGE\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"M-SEARCH\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"NOTIFY\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"SUBSCRIBE\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"UNSUBSCRIBE\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"PATCH\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"PURGE\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"MKCALENDAR\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"UNLINK\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"%s / HTTP/1.1\0D\0A\0D\0A\00", align 1
@main.bad_methods = internal global [13 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i8* null], align 16
@.str.64 = private unnamed_addr constant [5 x i8] c"ASDF\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"C******\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"COLA\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"GEM\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"GETA\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"M****\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"MKCOLA\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"PROPPATCHA\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"PUN\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"PX\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"SA\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@HPE_INVALID_METHOD = common dso_local global i32 0, align 4
@.str.76 = private unnamed_addr constant [35 x i8] c"GET / HTTP/1.1\0D\0Aname\0D\0A : value\0D\0A\0D\0A\00", align 1
@.str.77 = private unnamed_addr constant [2045 x i8] c"GET / HTTP/1.1\0D\0AX-SSL-Nonsense:   -----BEGIN CERTIFICATE-----\0D\0A\09MIIFbTCCBFWgAwIBAgICH4cwDQYJKoZIhvcNAQEFBQAwcDELMAkGA1UEBhMCVUsx\0D\0A\09ETAPBgNVBAoTCGVTY2llbmNlMRIwEAYDVQQLEwlBdXRob3JpdHkxCzAJBgNVBAMT\0D\0A\09AkNBMS0wKwYJKoZIhvcNAQkBFh5jYS1vcGVyYXRvckBncmlkLXN1cHBvcnQuYWMu\0D\0A\09dWswHhcNMDYwNzI3MTQxMzI4WhcNMDcwNzI3MTQxMzI4WjBbMQswCQYDVQQGEwJV\0D\0A\09SzERMA8GA1UEChMIZVNjaWVuY2UxEzARBgNVBAsTCk1hbmNoZXN0ZXIxCzAJBgNV\0D\0A\09BAcTmrsogriqMWLAk1DMRcwFQYDVQQDEw5taWNoYWVsIHBhcmQYJKoZIhvcNAQEB\0D\0A\09BQADggEPADCCAQoCggEBANPEQBgl1IaKdSS1TbhF3hEXSl72G9J+WC/1R64fAcEF\0D\0A\09W51rEyFYiIeZGx/BVzwXbeBoNUK41OK65sxGuflMo5gLflbwJtHBRIEKAfVVp3YR\0D\0A\09gW7cMA/s/XKgL1GEC7rQw8lIZT8RApukCGqOVHSi/F1SiFlPDxuDfmdiNzL31+sL\0D\0A\090iwHDdNkGjy5pyBSB8Y79dsSJtCW/iaLB0/n8Sj7HgvvZJ7x0fr+RQjYOUUfrePP\0D\0A\09u2MSpFyf+9BbC/aXgaZuiCvSR+8Snv3xApQY+fULK/xY8h8Ua51iXoQ5jrgu2SqR\0D\0A\09wgA7BUi3G8LFzMBl8FRCDYGUDy7M6QaHXx1ZWIPWNKsCAwEAAaOCAiQwggIgMAwG\0D\0A\09A1UdEwEB/wQCMAAwEQYJYIZIAYb4QgHTTPAQDAgWgMA4GA1UdDwEB/wQEAwID6DAs\0D\0A\09BglghkgBhvhCAQ0EHxYdVUsgZS1TY2llbmNlIFVzZXIgQ2VydGlmaWNhdGUwHQYD\0D\0A\09VR0OBBYEFDTt/sf9PeMaZDHkUIldrDYMNTBZMIGaBgNVHSMEgZIwgY+AFAI4qxGj\0D\0A\09loCLDdMVKwiljjDastqooXSkcjBwMQswCQYDVQQGEwJVSzERMA8GA1UEChMIZVNj\0D\0A\09aWVuY2UxEjAQBgNVBAsTCUF1dGhvcml0eTELMAkGA1UEAxMCQ0ExLTArBgkqhkiG\0D\0A\099w0BCQEWHmNhLW9wZXJhdG9yQGdyaWQtc3VwcG9ydC5hYy51a4IBADApBgNVHRIE\0D\0A\09IjAggR5jYS1vcGVyYXRvckBncmlkLXN1cHBvcnQuYWMudWswGQYDVR0gBBIwEDAO\0D\0A\09BgwrBgEEAdkvAQEBAQYwPQYJYIZIAYb4QgEEBDAWLmh0dHA6Ly9jYS5ncmlkLXN1\0D\0A\09cHBvcnQuYWMudmT4sopwqlBWsvcHViL2NybC9jYWNybC5jcmwwPQYJYIZIAYb4QgEDBDAWLmh0\0D\0A\09dHA6Ly9jYS5ncmlkLXN1cHBvcnQuYWMudWsvcHViL2NybC9jYWNybC5jcmwwPwYD\0D\0A\09VR0fBDgwNjA0oDKgMIYuaHR0cDovL2NhLmdyaWQt5hYy51ay9wdWIv\0D\0A\09Y3JsL2NhY3JsLmNybDANBgkqhkiG9w0BAQUFAAOCAQEAS/U4iiooBENGW/Hwmmd3\0D\0A\09XCy6Zrt08YjKCzGNjorT98g8uGsqYjSxv/hmi0qlnlHs+k/3Iobc3LjS5AMYr5L8\0D\0A\09UO7OSkgFFlLHQyC9JzPfmLCAugvzEbyv4Olnsr8hbxF1MbKZoQxUZtMVu29wjfXk\0D\0A\09hTeApBv7eaKCWpSp7MCbvgzm74izKhu3vlDk9w6qVrxePfGgpKPqfHiOoGhFnbTK\0D\0A\09wTC6o2xq5y0qZ03JonF7OJspEd3I5zKY3E+ov7/ZhW6DqT8UFvsAdjvQbXyhV8Eu\0D\0A\09Yhixw1aKEPzNjNowuIseVogKOLXxWI5vAi5HgXdS0/ES5gDGsABo4fqovUKlgop3\0D\0A\09RA==\0D\0A\09-----END CERTIFICATE-----\0D\0A\0D\0A\00", align 1
@.str.78 = private unnamed_addr constant [90 x i8] c"GET / HTTP/1.1\0D\0AHost: www.example.com\0D\0AConnection\0D\1B5\D5eep-Alive\0D\0AAccept-Encoding: gzip\0D\0A\0D\0A\00", align 1
@.str.79 = private unnamed_addr constant [93 x i8] c"GET / HTTP/1.1\0D\0AHost: www.example.com\0D\0AX-Some-Header\0D\1B5\D5eep-Alive\0D\0AAccept-Encoding: gzip\0D\0A\0D\0A\00", align 1
@requests = common dso_local global %struct.message* null, align 8
@.str.80 = private unnamed_addr constant [23 x i8] c"request scan 1/4      \00", align 1
@GET_NO_HEADERS_NO_BODY = common dso_local global i64 0, align 8
@GET_ONE_HEADER_NO_BODY = common dso_local global i64 0, align 8
@.str.81 = private unnamed_addr constant [23 x i8] c"request scan 2/4      \00", align 1
@POST_CHUNKED_ALL_YOUR_BASE = common dso_local global i64 0, align 8
@POST_IDENTITY_BODY_WORLD = common dso_local global i64 0, align 8
@GET_FUNKY_CONTENT_LENGTH = common dso_local global i64 0, align 8
@.str.82 = private unnamed_addr constant [23 x i8] c"request scan 3/4      \00", align 1
@TWO_CHUNKS_MULT_ZERO_END = common dso_local global i64 0, align 8
@CHUNKED_W_TRAILING_HEADERS = common dso_local global i64 0, align 8
@CHUNKED_W_NONSENSE_AFTER_LENGTH = common dso_local global i64 0, align 8
@.str.83 = private unnamed_addr constant [23 x i8] c"request scan 4/4      \00", align 1
@QUERY_URL_WITH_QUESTION_MARK_GET = common dso_local global i64 0, align 8
@PREFIX_NEWLINE_GET = common dso_local global i64 0, align 8
@CONNECT_REQUEST = common dso_local global i64 0, align 8
@.str.84 = private unnamed_addr constant [14 x i8] c"requests okay\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.message, align 8
  %11 = alloca i8**, align 8
  %12 = alloca [200 x i8], align 16
  %13 = alloca [200 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %17 = call i64 (...) @http_parser_version()
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = lshr i64 %18, 16
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i64, i64* %5, align 8
  %23 = lshr i64 %22, 8
  %24 = and i64 %23, 255
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i64, i64* %5, align 8
  %27 = and i64 %26, 255
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i64 %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %35 = call i32 (...) @test_preserve_data()
  %36 = call i32 (...) @test_parse_url()
  %37 = call i32 (...) @test_method_str()
  %38 = call i32 (...) @test_status_str()
  %39 = call i32 (...) @test_header_nread_value()
  %40 = call i32 (...) @test_no_overflow_parse_url()
  %41 = load i32, i32* @HTTP_REQUEST, align 4
  %42 = call i32 @test_header_overflow_error(i32 %41)
  %43 = load i32, i32* @HTTP_REQUEST, align 4
  %44 = call i32 @test_no_overflow_long_body(i32 %43, i32 1000)
  %45 = load i32, i32* @HTTP_REQUEST, align 4
  %46 = call i32 @test_no_overflow_long_body(i32 %45, i32 100000)
  %47 = load i32, i32* @HTTP_RESPONSE, align 4
  %48 = call i32 @test_header_overflow_error(i32 %47)
  %49 = load i32, i32* @HTTP_RESPONSE, align 4
  %50 = call i32 @test_no_overflow_long_body(i32 %49, i32 1000)
  %51 = load i32, i32* @HTTP_RESPONSE, align 4
  %52 = call i32 @test_no_overflow_long_body(i32 %51, i32 100000)
  %53 = call i32 (...) @test_header_content_length_overflow_error()
  %54 = call i32 (...) @test_chunk_content_length_overflow_error()
  %55 = load i32, i32* @HTTP_REQUEST, align 4
  %56 = call i32 @test_double_content_length_error(i32 %55)
  %57 = load i32, i32* @HTTP_REQUEST, align 4
  %58 = call i32 @test_chunked_content_length_error(i32 %57)
  %59 = load i32, i32* @HTTP_REQUEST, align 4
  %60 = call i32 @test_header_cr_no_lf_error(i32 %59)
  %61 = load i32, i32* @HTTP_REQUEST, align 4
  %62 = call i32 @test_invalid_header_field_token_error(i32 %61)
  %63 = load i32, i32* @HTTP_REQUEST, align 4
  %64 = call i32 @test_invalid_header_field_content_error(i32 %63)
  %65 = load i32, i32* @HTTP_RESPONSE, align 4
  %66 = call i32 @test_double_content_length_error(i32 %65)
  %67 = load i32, i32* @HTTP_RESPONSE, align 4
  %68 = call i32 @test_chunked_content_length_error(i32 %67)
  %69 = load i32, i32* @HTTP_RESPONSE, align 4
  %70 = call i32 @test_header_cr_no_lf_error(i32 %69)
  %71 = load i32, i32* @HTTP_RESPONSE, align 4
  %72 = call i32 @test_invalid_header_field_token_error(i32 %71)
  %73 = load i32, i32* @HTTP_RESPONSE, align 4
  %74 = call i32 @test_invalid_header_field_content_error(i32 %73)
  %75 = load i32, i32* @HPE_INVALID_CONTENT_LENGTH, align 4
  %76 = load i32, i32* @HTTP_REQUEST, align 4
  %77 = call i32 @test_simple_type(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* @HPE_OK, align 4
  %79 = load i32, i32* @HTTP_REQUEST, align 4
  %80 = call i32 @test_simple_type(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* @HPE_INVALID_CONTENT_LENGTH, align 4
  %82 = load i32, i32* @HTTP_REQUEST, align 4
  %83 = call i32 @test_simple_type(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* @HPE_INVALID_CONTENT_LENGTH, align 4
  %85 = load i32, i32* @HTTP_REQUEST, align 4
  %86 = call i32 @test_simple_type(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* @HPE_INVALID_CONTENT_LENGTH, align 4
  %88 = load i32, i32* @HTTP_REQUEST, align 4
  %89 = call i32 @test_simple_type(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* @HPE_OK, align 4
  %91 = load i32, i32* @HTTP_REQUEST, align 4
  %92 = call i32 @test_simple_type(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @HPE_INVALID_VERSION, align 4
  %94 = load i32, i32* @HTTP_RESPONSE, align 4
  %95 = call i32 @test_simple_type(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load i32, i32* @HPE_INVALID_VERSION, align 4
  %97 = load i32, i32* @HTTP_RESPONSE, align 4
  %98 = call i32 @test_simple_type(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load i32, i32* @HPE_INVALID_VERSION, align 4
  %100 = load i32, i32* @HTTP_RESPONSE, align 4
  %101 = call i32 @test_simple_type(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load i32, i32* @HPE_INVALID_VERSION, align 4
  %103 = load i32, i32* @HTTP_RESPONSE, align 4
  %104 = call i32 @test_simple_type(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i32, i32* @HPE_INVALID_VERSION, align 4
  %106 = load i32, i32* @HTTP_RESPONSE, align 4
  %107 = call i32 @test_simple_type(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i32, i32* @HPE_INVALID_VERSION, align 4
  %109 = load i32, i32* @HTTP_RESPONSE, align 4
  %110 = call i32 @test_simple_type(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %108, i32 %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %122, %0
  %112 = load i32, i32* %2, align 4
  %113 = load %struct.message*, %struct.message** @responses, align 8
  %114 = call i32 @ARRAY_SIZE(%struct.message* %113)
  %115 = icmp ult i32 %112, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.message*, %struct.message** @responses, align 8
  %118 = load i32, i32* %2, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.message, %struct.message* %117, i64 %119
  %121 = call i32 @test_message(%struct.message* %120)
  br label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %2, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %2, align 4
  br label %111

125:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %137, %125
  %127 = load i32, i32* %2, align 4
  %128 = load %struct.message*, %struct.message** @responses, align 8
  %129 = call i32 @ARRAY_SIZE(%struct.message* %128)
  %130 = icmp ult i32 %127, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load %struct.message*, %struct.message** @responses, align 8
  %133 = load i32, i32* %2, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.message, %struct.message* %132, i64 %134
  %136 = call i32 @test_message_pause(%struct.message* %135)
  br label %137

137:                                              ; preds = %131
  %138 = load i32, i32* %2, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %2, align 4
  br label %126

140:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %152, %140
  %142 = load i32, i32* %2, align 4
  %143 = load %struct.message*, %struct.message** @responses, align 8
  %144 = call i32 @ARRAY_SIZE(%struct.message* %143)
  %145 = icmp ult i32 %142, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load %struct.message*, %struct.message** @responses, align 8
  %148 = load i32, i32* %2, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.message, %struct.message* %147, i64 %149
  %151 = call i32 @test_message_connect(%struct.message* %150)
  br label %152

152:                                              ; preds = %146
  %153 = load i32, i32* %2, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %2, align 4
  br label %141

155:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %213, %155
  %157 = load i32, i32* %2, align 4
  %158 = load %struct.message*, %struct.message** @responses, align 8
  %159 = call i32 @ARRAY_SIZE(%struct.message* %158)
  %160 = icmp ult i32 %157, %159
  br i1 %160, label %161, label %216

161:                                              ; preds = %156
  %162 = load %struct.message*, %struct.message** @responses, align 8
  %163 = load i32, i32* %2, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.message, %struct.message* %162, i64 %164
  %166 = getelementptr inbounds %struct.message, %struct.message* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %161
  br label %213

170:                                              ; preds = %161
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %209, %170
  %172 = load i32, i32* %3, align 4
  %173 = load %struct.message*, %struct.message** @responses, align 8
  %174 = call i32 @ARRAY_SIZE(%struct.message* %173)
  %175 = icmp ult i32 %172, %174
  br i1 %175, label %176, label %212

176:                                              ; preds = %171
  %177 = load %struct.message*, %struct.message** @responses, align 8
  %178 = load i32, i32* %3, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.message, %struct.message* %177, i64 %179
  %181 = getelementptr inbounds %struct.message, %struct.message* %180, i32 0, i32 9
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %176
  br label %209

185:                                              ; preds = %176
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %205, %185
  %187 = load i32, i32* %4, align 4
  %188 = load %struct.message*, %struct.message** @responses, align 8
  %189 = call i32 @ARRAY_SIZE(%struct.message* %188)
  %190 = icmp ult i32 %187, %189
  br i1 %190, label %191, label %208

191:                                              ; preds = %186
  %192 = load %struct.message*, %struct.message** @responses, align 8
  %193 = load i32, i32* %2, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.message, %struct.message* %192, i64 %194
  %196 = load %struct.message*, %struct.message** @responses, align 8
  %197 = load i32, i32* %3, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.message, %struct.message* %196, i64 %198
  %200 = load %struct.message*, %struct.message** @responses, align 8
  %201 = load i32, i32* %4, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.message, %struct.message* %200, i64 %202
  %204 = call i32 @test_multiple3(%struct.message* %195, %struct.message* %199, %struct.message* %203)
  br label %205

205:                                              ; preds = %191
  %206 = load i32, i32* %4, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %4, align 4
  br label %186

208:                                              ; preds = %186
  br label %209

209:                                              ; preds = %208, %184
  %210 = load i32, i32* %3, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %3, align 4
  br label %171

212:                                              ; preds = %171
  br label %213

213:                                              ; preds = %212, %169
  %214 = load i32, i32* %2, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %2, align 4
  br label %156

216:                                              ; preds = %156
  %217 = load %struct.message*, %struct.message** @responses, align 8
  %218 = load i64, i64* @NO_HEADERS_NO_BODY_404, align 8
  %219 = getelementptr inbounds %struct.message, %struct.message* %217, i64 %218
  %220 = call i32 @test_message_count_body(%struct.message* %219)
  %221 = load %struct.message*, %struct.message** @responses, align 8
  %222 = load i64, i64* @TRAILING_SPACE_ON_CHUNKED_BODY, align 8
  %223 = getelementptr inbounds %struct.message, %struct.message* %221, i64 %222
  %224 = call i32 @test_message_count_body(%struct.message* %223)
  %225 = call i8* @create_large_chunked_message(i32 31337, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.14, i64 0, i64 0))
  store i8* %225, i8** %9, align 8
  %226 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %226, align 8
  %227 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 1
  %228 = load i8*, i8** %9, align 8
  store i8* %228, i8** %227, align 8
  %229 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 2
  store i32 1, i32* %229, align 8
  %230 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 3
  store i32 200, i32* %230, align 4
  %231 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %231, align 8
  %232 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 5
  store i32 2, i32* %232, align 8
  %233 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 6
  store i32 32089088, i32* %233, align 4
  %234 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 7
  store i32 31338, i32* %234, align 8
  %235 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 8
  store i32* null, i32** %235, align 8
  %236 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 9
  %237 = load i32, i32* @FALSE, align 4
  store i32 %237, i32* %236, align 8
  %238 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 10
  store i32 ptrtoint ([18 x i8]* @.str.17 to i32), i32* %238, align 4
  %239 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 11
  store i32 0, i32* %239, align 8
  %240 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 12
  %241 = load i32, i32* @FALSE, align 4
  store i32 %241, i32* %240, align 4
  %242 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 13
  %243 = load i32, i32* @HTTP_RESPONSE, align 4
  store i32 %243, i32* %242, align 8
  store i32 0, i32* %2, align 4
  br label %244

244:                                              ; preds = %254, %216
  %245 = load i32, i32* %2, align 4
  %246 = load i32, i32* @MAX_CHUNKS, align 4
  %247 = icmp ult i32 %245, %246
  br i1 %247, label %248, label %257

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 8
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %2, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 1024, i32* %253, align 4
  br label %254

254:                                              ; preds = %248
  %255 = load i32, i32* %2, align 4
  %256 = add i32 %255, 1
  store i32 %256, i32* %2, align 4
  br label %244

257:                                              ; preds = %244
  %258 = call i32 @test_message_count_body(%struct.message* %10)
  %259 = load i8*, i8** %9, align 8
  %260 = call i32 @free(i8* %259)
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  %262 = load %struct.message*, %struct.message** @responses, align 8
  %263 = load i64, i64* @TRAILING_SPACE_ON_CHUNKED_BODY, align 8
  %264 = getelementptr inbounds %struct.message, %struct.message* %262, i64 %263
  %265 = load %struct.message*, %struct.message** @responses, align 8
  %266 = load i64, i64* @NO_BODY_HTTP10_KA_204, align 8
  %267 = getelementptr inbounds %struct.message, %struct.message* %265, i64 %266
  %268 = load %struct.message*, %struct.message** @responses, align 8
  %269 = load i64, i64* @NO_REASON_PHRASE, align 8
  %270 = getelementptr inbounds %struct.message, %struct.message* %268, i64 %269
  %271 = call i32 @test_scan(%struct.message* %264, %struct.message* %267, %struct.message* %270)
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  %273 = load %struct.message*, %struct.message** @responses, align 8
  %274 = load i64, i64* @BONJOUR_MADAME_FR, align 8
  %275 = getelementptr inbounds %struct.message, %struct.message* %273, i64 %274
  %276 = load %struct.message*, %struct.message** @responses, align 8
  %277 = load i64, i64* @UNDERSTORE_HEADER_KEY, align 8
  %278 = getelementptr inbounds %struct.message, %struct.message* %276, i64 %277
  %279 = load %struct.message*, %struct.message** @responses, align 8
  %280 = load i64, i64* @NO_CARRIAGE_RET, align 8
  %281 = getelementptr inbounds %struct.message, %struct.message* %279, i64 %280
  %282 = call i32 @test_scan(%struct.message* %275, %struct.message* %278, %struct.message* %281)
  %283 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %284 = load i32, i32* @HPE_INVALID_CONSTANT, align 4
  %285 = call i32 @test_simple(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %284)
  %286 = load i32, i32* @HPE_INVALID_CONSTANT, align 4
  %287 = call i32 @test_simple(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %286)
  %288 = load i32, i32* @HPE_INVALID_VERSION, align 4
  %289 = call i32 @test_simple(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 %288)
  %290 = load i32, i32* @HPE_INVALID_VERSION, align 4
  %291 = call i32 @test_simple(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32 %290)
  %292 = load i32, i32* @HPE_INVALID_VERSION, align 4
  %293 = call i32 @test_simple(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32 %292)
  %294 = load i32, i32* @HPE_INVALID_VERSION, align 4
  %295 = call i32 @test_simple(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i32 %294)
  %296 = load i32, i32* @HPE_INVALID_HEADER_TOKEN, align 4
  %297 = call i32 @test_simple(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i32 %296)
  %298 = load i32, i32* @HPE_INVALID_HEADER_TOKEN, align 4
  %299 = call i32 @test_simple(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), i32 %298)
  %300 = load i32, i32* @HPE_OK, align 4
  %301 = call i32 @test_simple(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0), i32 %300)
  %302 = load i32, i32* @HPE_OK, align 4
  %303 = call i32 @test_simple(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i32 %302)
  store i8** getelementptr inbounds ([33 x i8*], [33 x i8*]* @main.all_methods, i64 0, i64 0), i8*** %11, align 8
  br label %304

304:                                              ; preds = %316, %257
  %305 = load i8**, i8*** %11, align 8
  %306 = load i8*, i8** %305, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %308, label %319

308:                                              ; preds = %304
  %309 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %310 = load i8**, i8*** %11, align 8
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 @sprintf(i8* %309, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i8* %311)
  %313 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %314 = load i32, i32* @HPE_OK, align 4
  %315 = call i32 @test_simple(i8* %313, i32 %314)
  br label %316

316:                                              ; preds = %308
  %317 = load i8**, i8*** %11, align 8
  %318 = getelementptr inbounds i8*, i8** %317, i32 1
  store i8** %318, i8*** %11, align 8
  br label %304

319:                                              ; preds = %304
  store i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @main.bad_methods, i64 0, i64 0), i8*** %11, align 8
  br label %320

320:                                              ; preds = %332, %319
  %321 = load i8**, i8*** %11, align 8
  %322 = load i8*, i8** %321, align 8
  %323 = icmp ne i8* %322, null
  br i1 %323, label %324, label %335

324:                                              ; preds = %320
  %325 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %326 = load i8**, i8*** %11, align 8
  %327 = load i8*, i8** %326, align 8
  %328 = call i32 @sprintf(i8* %325, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i8* %327)
  %329 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %330 = load i32, i32* @HPE_INVALID_METHOD, align 4
  %331 = call i32 @test_simple(i8* %329, i32 %330)
  br label %332

332:                                              ; preds = %324
  %333 = load i8**, i8*** %11, align 8
  %334 = getelementptr inbounds i8*, i8** %333, i32 1
  store i8** %334, i8*** %11, align 8
  br label %320

335:                                              ; preds = %320
  %336 = load i32, i32* @HPE_INVALID_HEADER_TOKEN, align 4
  %337 = call i32 @test_simple(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.76, i64 0, i64 0), i32 %336)
  store i8* getelementptr inbounds ([2045 x i8], [2045 x i8]* @.str.77, i64 0, i64 0), i8** %14, align 8
  %338 = load i8*, i8** %14, align 8
  %339 = load i32, i32* @HPE_OK, align 4
  %340 = call i32 @test_simple(i8* %338, i32 %339)
  store i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.78, i64 0, i64 0), i8** %15, align 8
  %341 = load i8*, i8** %15, align 8
  %342 = load i32, i32* @HPE_INVALID_HEADER_TOKEN, align 4
  %343 = call i32 @test_simple(i8* %341, i32 %342)
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.79, i64 0, i64 0), i8** %16, align 8
  %344 = load i8*, i8** %16, align 8
  %345 = load i32, i32* @HPE_INVALID_HEADER_TOKEN, align 4
  %346 = call i32 @test_simple(i8* %344, i32 %345)
  store i32 0, i32* %2, align 4
  br label %347

347:                                              ; preds = %358, %335
  %348 = load i32, i32* %2, align 4
  %349 = load %struct.message*, %struct.message** @requests, align 8
  %350 = call i32 @ARRAY_SIZE(%struct.message* %349)
  %351 = icmp ult i32 %348, %350
  br i1 %351, label %352, label %361

352:                                              ; preds = %347
  %353 = load %struct.message*, %struct.message** @requests, align 8
  %354 = load i32, i32* %2, align 4
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds %struct.message, %struct.message* %353, i64 %355
  %357 = call i32 @test_message(%struct.message* %356)
  br label %358

358:                                              ; preds = %352
  %359 = load i32, i32* %2, align 4
  %360 = add i32 %359, 1
  store i32 %360, i32* %2, align 4
  br label %347

361:                                              ; preds = %347
  store i32 0, i32* %2, align 4
  br label %362

362:                                              ; preds = %373, %361
  %363 = load i32, i32* %2, align 4
  %364 = load %struct.message*, %struct.message** @requests, align 8
  %365 = call i32 @ARRAY_SIZE(%struct.message* %364)
  %366 = icmp ult i32 %363, %365
  br i1 %366, label %367, label %376

367:                                              ; preds = %362
  %368 = load %struct.message*, %struct.message** @requests, align 8
  %369 = load i32, i32* %2, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds %struct.message, %struct.message* %368, i64 %370
  %372 = call i32 @test_message_pause(%struct.message* %371)
  br label %373

373:                                              ; preds = %367
  %374 = load i32, i32* %2, align 4
  %375 = add i32 %374, 1
  store i32 %375, i32* %2, align 4
  br label %362

376:                                              ; preds = %362
  store i32 0, i32* %2, align 4
  br label %377

377:                                              ; preds = %434, %376
  %378 = load i32, i32* %2, align 4
  %379 = load %struct.message*, %struct.message** @requests, align 8
  %380 = call i32 @ARRAY_SIZE(%struct.message* %379)
  %381 = icmp ult i32 %378, %380
  br i1 %381, label %382, label %437

382:                                              ; preds = %377
  %383 = load %struct.message*, %struct.message** @requests, align 8
  %384 = load i32, i32* %2, align 4
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds %struct.message, %struct.message* %383, i64 %385
  %387 = getelementptr inbounds %struct.message, %struct.message* %386, i32 0, i32 9
  %388 = load i32, i32* %387, align 8
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %382
  br label %434

391:                                              ; preds = %382
  store i32 0, i32* %3, align 4
  br label %392

392:                                              ; preds = %430, %391
  %393 = load i32, i32* %3, align 4
  %394 = load %struct.message*, %struct.message** @requests, align 8
  %395 = call i32 @ARRAY_SIZE(%struct.message* %394)
  %396 = icmp ult i32 %393, %395
  br i1 %396, label %397, label %433

397:                                              ; preds = %392
  %398 = load %struct.message*, %struct.message** @requests, align 8
  %399 = load i32, i32* %3, align 4
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds %struct.message, %struct.message* %398, i64 %400
  %402 = getelementptr inbounds %struct.message, %struct.message* %401, i32 0, i32 9
  %403 = load i32, i32* %402, align 8
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %406, label %405

405:                                              ; preds = %397
  br label %430

406:                                              ; preds = %397
  store i32 0, i32* %4, align 4
  br label %407

407:                                              ; preds = %426, %406
  %408 = load i32, i32* %4, align 4
  %409 = load %struct.message*, %struct.message** @requests, align 8
  %410 = call i32 @ARRAY_SIZE(%struct.message* %409)
  %411 = icmp ult i32 %408, %410
  br i1 %411, label %412, label %429

412:                                              ; preds = %407
  %413 = load %struct.message*, %struct.message** @requests, align 8
  %414 = load i32, i32* %2, align 4
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds %struct.message, %struct.message* %413, i64 %415
  %417 = load %struct.message*, %struct.message** @requests, align 8
  %418 = load i32, i32* %3, align 4
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds %struct.message, %struct.message* %417, i64 %419
  %421 = load %struct.message*, %struct.message** @requests, align 8
  %422 = load i32, i32* %4, align 4
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds %struct.message, %struct.message* %421, i64 %423
  %425 = call i32 @test_multiple3(%struct.message* %416, %struct.message* %420, %struct.message* %424)
  br label %426

426:                                              ; preds = %412
  %427 = load i32, i32* %4, align 4
  %428 = add i32 %427, 1
  store i32 %428, i32* %4, align 4
  br label %407

429:                                              ; preds = %407
  br label %430

430:                                              ; preds = %429, %405
  %431 = load i32, i32* %3, align 4
  %432 = add i32 %431, 1
  store i32 %432, i32* %3, align 4
  br label %392

433:                                              ; preds = %392
  br label %434

434:                                              ; preds = %433, %390
  %435 = load i32, i32* %2, align 4
  %436 = add i32 %435, 1
  store i32 %436, i32* %2, align 4
  br label %377

437:                                              ; preds = %377
  %438 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.80, i64 0, i64 0))
  %439 = load %struct.message*, %struct.message** @requests, align 8
  %440 = load i64, i64* @GET_NO_HEADERS_NO_BODY, align 8
  %441 = getelementptr inbounds %struct.message, %struct.message* %439, i64 %440
  %442 = load %struct.message*, %struct.message** @requests, align 8
  %443 = load i64, i64* @GET_ONE_HEADER_NO_BODY, align 8
  %444 = getelementptr inbounds %struct.message, %struct.message* %442, i64 %443
  %445 = load %struct.message*, %struct.message** @requests, align 8
  %446 = load i64, i64* @GET_NO_HEADERS_NO_BODY, align 8
  %447 = getelementptr inbounds %struct.message, %struct.message* %445, i64 %446
  %448 = call i32 @test_scan(%struct.message* %441, %struct.message* %444, %struct.message* %447)
  %449 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.81, i64 0, i64 0))
  %450 = load %struct.message*, %struct.message** @requests, align 8
  %451 = load i64, i64* @POST_CHUNKED_ALL_YOUR_BASE, align 8
  %452 = getelementptr inbounds %struct.message, %struct.message* %450, i64 %451
  %453 = load %struct.message*, %struct.message** @requests, align 8
  %454 = load i64, i64* @POST_IDENTITY_BODY_WORLD, align 8
  %455 = getelementptr inbounds %struct.message, %struct.message* %453, i64 %454
  %456 = load %struct.message*, %struct.message** @requests, align 8
  %457 = load i64, i64* @GET_FUNKY_CONTENT_LENGTH, align 8
  %458 = getelementptr inbounds %struct.message, %struct.message* %456, i64 %457
  %459 = call i32 @test_scan(%struct.message* %452, %struct.message* %455, %struct.message* %458)
  %460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i64 0, i64 0))
  %461 = load %struct.message*, %struct.message** @requests, align 8
  %462 = load i64, i64* @TWO_CHUNKS_MULT_ZERO_END, align 8
  %463 = getelementptr inbounds %struct.message, %struct.message* %461, i64 %462
  %464 = load %struct.message*, %struct.message** @requests, align 8
  %465 = load i64, i64* @CHUNKED_W_TRAILING_HEADERS, align 8
  %466 = getelementptr inbounds %struct.message, %struct.message* %464, i64 %465
  %467 = load %struct.message*, %struct.message** @requests, align 8
  %468 = load i64, i64* @CHUNKED_W_NONSENSE_AFTER_LENGTH, align 8
  %469 = getelementptr inbounds %struct.message, %struct.message* %467, i64 %468
  %470 = call i32 @test_scan(%struct.message* %463, %struct.message* %466, %struct.message* %469)
  %471 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.83, i64 0, i64 0))
  %472 = load %struct.message*, %struct.message** @requests, align 8
  %473 = load i64, i64* @QUERY_URL_WITH_QUESTION_MARK_GET, align 8
  %474 = getelementptr inbounds %struct.message, %struct.message* %472, i64 %473
  %475 = load %struct.message*, %struct.message** @requests, align 8
  %476 = load i64, i64* @PREFIX_NEWLINE_GET, align 8
  %477 = getelementptr inbounds %struct.message, %struct.message* %475, i64 %476
  %478 = load %struct.message*, %struct.message** @requests, align 8
  %479 = load i64, i64* @CONNECT_REQUEST, align 8
  %480 = getelementptr inbounds %struct.message, %struct.message* %478, i64 %479
  %481 = call i32 @test_scan(%struct.message* %474, %struct.message* %477, %struct.message* %480)
  %482 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i64 0, i64 0))
  ret i32 0
}

declare dso_local i64 @http_parser_version(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @test_preserve_data(...) #1

declare dso_local i32 @test_parse_url(...) #1

declare dso_local i32 @test_method_str(...) #1

declare dso_local i32 @test_status_str(...) #1

declare dso_local i32 @test_header_nread_value(...) #1

declare dso_local i32 @test_no_overflow_parse_url(...) #1

declare dso_local i32 @test_header_overflow_error(i32) #1

declare dso_local i32 @test_no_overflow_long_body(i32, i32) #1

declare dso_local i32 @test_header_content_length_overflow_error(...) #1

declare dso_local i32 @test_chunk_content_length_overflow_error(...) #1

declare dso_local i32 @test_double_content_length_error(i32) #1

declare dso_local i32 @test_chunked_content_length_error(i32) #1

declare dso_local i32 @test_header_cr_no_lf_error(i32) #1

declare dso_local i32 @test_invalid_header_field_token_error(i32) #1

declare dso_local i32 @test_invalid_header_field_content_error(i32) #1

declare dso_local i32 @test_simple_type(i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.message*) #1

declare dso_local i32 @test_message(%struct.message*) #1

declare dso_local i32 @test_message_pause(%struct.message*) #1

declare dso_local i32 @test_message_connect(%struct.message*) #1

declare dso_local i32 @test_multiple3(%struct.message*, %struct.message*, %struct.message*) #1

declare dso_local i32 @test_message_count_body(%struct.message*) #1

declare dso_local i8* @create_large_chunked_message(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @test_scan(%struct.message*, %struct.message*, %struct.message*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @test_simple(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
