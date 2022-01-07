; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_get_curl_handle.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_get_curl_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i8* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.strbuf = type { i8* }

@.str = private unnamed_addr constant [22 x i8] c"curl_easy_init failed\00", align 1
@curl_ssl_verify = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYPEER = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYHOST = common dso_local global i32 0, align 4
@http_ssl_backend = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"schannel\00", align 1
@http_schannel_check_revoke = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"CURLSSLOPT_NO_REVOKE not supported with cURL < 7.44.0\00", align 1
@http_proactive_auth = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"GIT_SSL_VERSION\00", align 1
@ssl_version = common dso_local global i8* null, align 8
@sslversions = common dso_local global %struct.TYPE_8__* null, align 8
@CURLOPT_SSLVERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"unsupported ssl version %s: using default\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"GIT_SSL_CIPHER_LIST\00", align 1
@ssl_cipherlist = common dso_local global i8* null, align 8
@CURLOPT_SSL_CIPHER_LIST = common dso_local global i32 0, align 4
@ssl_cert = common dso_local global i8* null, align 8
@CURLOPT_SSLCERT = common dso_local global i32 0, align 4
@CURLOPT_KEYPASSWD = common dso_local global i32 0, align 4
@cert_auth = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@http_schannel_use_ssl_cainfo = common dso_local global i32 0, align 4
@CURLOPT_CAINFO = common dso_local global i32 0, align 4
@ssl_cainfo = common dso_local global i8* null, align 8
@curl_low_speed_limit = common dso_local global i8* null, align 8
@curl_low_speed_time = common dso_local global i8* null, align 8
@CURLOPT_LOW_SPEED_LIMIT = common dso_local global i32 0, align 4
@CURLOPT_LOW_SPEED_TIME = common dso_local global i32 0, align 4
@CURLOPT_MAXREDIRS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"Protocol restrictions not supported with cURL < 7.19.4\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"GIT_CURL_VERBOSE\00", align 1
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"GIT_TRACE_CURL_NO_DATA\00", align 1
@trace_curl_data = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"GIT_REDACT_COOKIES\00", align 1
@cookies_to_redact = common dso_local global i32 0, align 4
@CURLOPT_USERAGENT = common dso_local global i32 0, align 4
@user_agent = common dso_local global i32 0, align 4
@curl_ftp_no_epsv = common dso_local global i64 0, align 8
@CURLOPT_FTP_USE_EPSV = common dso_local global i32 0, align 4
@curl_http_proxy = common dso_local global i8* null, align 8
@http_auth = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"HTTPS_PROXY\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"https_proxy\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"ALL_PROXY\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"all_proxy\00", align 1
@CURLOPT_PROXY = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@proxy_auth = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [10 x i8] c"http://%s\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Invalid proxy URL '%s'\00", align 1
@CURLAUTH_ANY = common dso_local global i8* null, align 8
@CURLOPT_CAPATH = common dso_local global i32 0, align 4
@CURLOPT_GSSAPI_DELEGATION = common dso_local global i32 0, align 4
@CURLOPT_HTTPAUTH = common dso_local global i32 0, align 4
@CURLOPT_HTTP_VERSION = common dso_local global i32 0, align 4
@CURLOPT_NETRC = common dso_local global i32 0, align 4
@CURLOPT_NOPROXY = common dso_local global i32 0, align 4
@CURLOPT_PINNEDPUBLICKEY = common dso_local global i32 0, align 4
@CURLOPT_POST301 = common dso_local global i32 0, align 4
@CURLOPT_POSTREDIR = common dso_local global i32 0, align 4
@CURLOPT_PROTOCOLS = common dso_local global i32 0, align 4
@CURLOPT_PROXYTYPE = common dso_local global i32 0, align 4
@CURLOPT_PROXY_CAINFO = common dso_local global i32 0, align 4
@CURLOPT_REDIR_PROTOCOLS = common dso_local global i32 0, align 4
@CURLOPT_SSLKEY = common dso_local global i32 0, align 4
@CURLOPT_SSL_OPTIONS = common dso_local global i32 0, align 4
@CURLOPT_USE_SSL = common dso_local global i32 0, align 4
@CURLPROXY_HTTPS = common dso_local global i8* null, align 8
@CURLPROXY_SOCKS4 = common dso_local global i8* null, align 8
@CURLPROXY_SOCKS4A = common dso_local global i8* null, align 8
@CURLPROXY_SOCKS5 = common dso_local global i8* null, align 8
@CURLPROXY_SOCKS5_HOSTNAME = common dso_local global i8* null, align 8
@CURLSSLOPT_NO_REVOKE = common dso_local global i8* null, align 8
@CURLUSESSL_TRY = common dso_local global i8* null, align 8
@CURL_NETRC_OPTIONAL = common dso_local global i8* null, align 8
@CURL_REDIR_POST_ALL = common dso_local global i8* null, align 8
@curl_deleg = common dso_local global i8* null, align 8
@curl_deleg_levels = common dso_local global %struct.TYPE_8__* null, align 8
@curl_http_version = common dso_local global i64 0, align 8
@curl_no_proxy = common dso_local global i8* null, align 8
@curl_ssl_try = common dso_local global i64 0, align 8
@ssl_capath = common dso_local global i8* null, align 8
@ssl_key = common dso_local global i8* null, align 8
@ssl_pinnedkey = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @get_curl_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_curl_handle() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.strbuf, align 8
  %4 = call i32* (...) @curl_easy_init()
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32, i32* @curl_ssl_verify, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* @CURLOPT_SSL_VERIFYPEER, align 4
  %15 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %13, i32 %14, i32 0)
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* @CURLOPT_SSL_VERIFYHOST, align 4
  %18 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %16, i32 %17, i32 0)
  br label %26

19:                                               ; preds = %9
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* @CURLOPT_SSL_VERIFYPEER, align 4
  %22 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %20, i32 %21, i32 1)
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @CURLOPT_SSL_VERIFYHOST, align 4
  %25 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %23, i32 %24, i32 2)
  br label %26

26:                                               ; preds = %19, %12
  %27 = load i8*, i8** @http_ssl_backend, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i8*, i8** @http_ssl_backend, align 8
  %31 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @http_schannel_check_revoke, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 (i8*, ...) @warning(i8* %39)
  br label %41

41:                                               ; preds = %36, %33, %29, %26
  %42 = load i64, i64* @http_proactive_auth, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @init_curl_http_auth(i32* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %51, i8** @ssl_version, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i8*, i8** @ssl_version, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %99

55:                                               ; preds = %52
  %56 = load i8*, i8** @ssl_version, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %99

60:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %87, %60
  %62 = load i32, i32* %2, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sslversions, align 8
  %64 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %63)
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = load i8*, i8** @ssl_version, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sslversions, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strcmp(i8* %67, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %66
  %77 = load i32*, i32** %1, align 8
  %78 = load i32, i32* @CURLOPT_SSLVERSION, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sslversions, align 8
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %77, i32 %78, i8* %84)
  br label %90

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %2, align 4
  br label %61

90:                                               ; preds = %76, %61
  %91 = load i32, i32* %2, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sslversions, align 8
  %93 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %92)
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i8*, i8** @ssl_version, align 8
  %97 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %95, %90
  br label %99

99:                                               ; preds = %98, %55, %52
  %100 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i8* %103, i8** @ssl_cipherlist, align 8
  br label %104

104:                                              ; preds = %102, %99
  %105 = load i8*, i8** @ssl_cipherlist, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i8*, i8** @ssl_cipherlist, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32*, i32** %1, align 8
  %114 = load i32, i32* @CURLOPT_SSL_CIPHER_LIST, align 4
  %115 = load i8*, i8** @ssl_cipherlist, align 8
  %116 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %113, i32 %114, i8* %115)
  br label %117

117:                                              ; preds = %112, %107, %104
  %118 = load i8*, i8** @ssl_cert, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32*, i32** %1, align 8
  %122 = load i32, i32* @CURLOPT_SSLCERT, align 4
  %123 = load i8*, i8** @ssl_cert, align 8
  %124 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %121, i32 %122, i8* %123)
  br label %125

125:                                              ; preds = %120, %117
  %126 = call i64 (...) @has_cert_password()
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32*, i32** %1, align 8
  %130 = load i32, i32* @CURLOPT_KEYPASSWD, align 4
  %131 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cert_auth, i32 0, i32 0), align 8
  %132 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %129, i32 %130, i8* %131)
  br label %133

133:                                              ; preds = %128, %125
  %134 = load i8*, i8** @http_ssl_backend, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load i8*, i8** @http_ssl_backend, align 8
  %138 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* @http_schannel_use_ssl_cainfo, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load i32*, i32** %1, align 8
  %145 = load i32, i32* @CURLOPT_CAINFO, align 4
  %146 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %144, i32 %145, i8* null)
  br label %156

147:                                              ; preds = %140, %136, %133
  %148 = load i8*, i8** @ssl_cainfo, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32*, i32** %1, align 8
  %152 = load i32, i32* @CURLOPT_CAINFO, align 4
  %153 = load i8*, i8** @ssl_cainfo, align 8
  %154 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %151, i32 %152, i8* %153)
  br label %155

155:                                              ; preds = %150, %147
  br label %156

156:                                              ; preds = %155, %143
  %157 = load i8*, i8** @curl_low_speed_limit, align 8
  %158 = icmp ugt i8* %157, null
  br i1 %158, label %159, label %171

159:                                              ; preds = %156
  %160 = load i8*, i8** @curl_low_speed_time, align 8
  %161 = icmp ugt i8* %160, null
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load i32*, i32** %1, align 8
  %164 = load i32, i32* @CURLOPT_LOW_SPEED_LIMIT, align 4
  %165 = load i8*, i8** @curl_low_speed_limit, align 8
  %166 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %163, i32 %164, i8* %165)
  %167 = load i32*, i32** %1, align 8
  %168 = load i32, i32* @CURLOPT_LOW_SPEED_TIME, align 4
  %169 = load i8*, i8** @curl_low_speed_time, align 8
  %170 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %167, i32 %168, i8* %169)
  br label %171

171:                                              ; preds = %162, %159, %156
  %172 = load i32*, i32** %1, align 8
  %173 = load i32, i32* @CURLOPT_MAXREDIRS, align 4
  %174 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %172, i32 %173, i32 20)
  %175 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i8*
  %178 = call i32 (i8*, ...) @warning(i8* %177)
  %179 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %171
  %182 = load i32*, i32** %1, align 8
  %183 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %184 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %182, i32 %183, i64 1)
  br label %185

185:                                              ; preds = %181, %171
  %186 = load i32*, i32** %1, align 8
  %187 = call i32 @setup_curl_trace(i32* %186)
  %188 = call i8* @getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  store i64 0, i64* @trace_curl_data, align 8
  br label %191

191:                                              ; preds = %190, %185
  %192 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = call i8* @getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %196 = call i32 @string_list_split(i32* @cookies_to_redact, i8* %195, i8 signext 44, i32 -1)
  %197 = call i32 @string_list_sort(i32* @cookies_to_redact)
  br label %198

198:                                              ; preds = %194, %191
  %199 = load i32*, i32** %1, align 8
  %200 = load i32, i32* @CURLOPT_USERAGENT, align 4
  %201 = load i32, i32* @user_agent, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @user_agent, align 4
  br label %207

205:                                              ; preds = %198
  %206 = call i32 (...) @git_user_agent()
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i32 [ %204, %203 ], [ %206, %205 ]
  %209 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %199, i32 %200, i32 %208)
  %210 = load i64, i64* @curl_ftp_no_epsv, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load i32*, i32** %1, align 8
  %214 = load i32, i32* @CURLOPT_FTP_USE_EPSV, align 4
  %215 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %213, i32 %214, i32 0)
  br label %216

216:                                              ; preds = %212, %207
  %217 = load i8*, i8** @curl_http_proxy, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %243, label %219

219:                                              ; preds = %216
  %220 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @http_auth, i32 0, i32 0), align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %231

222:                                              ; preds = %219
  %223 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @http_auth, i32 0, i32 0), align 8
  %224 = call i32 @strcmp(i8* %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %222
  %227 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %228 = call i32 @var_override(i8** @curl_http_proxy, i8* %227)
  %229 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %230 = call i32 @var_override(i8** @curl_http_proxy, i8* %229)
  br label %234

231:                                              ; preds = %222, %219
  %232 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %233 = call i32 @var_override(i8** @curl_http_proxy, i8* %232)
  br label %234

234:                                              ; preds = %231, %226
  %235 = load i8*, i8** @curl_http_proxy, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %242, label %237

237:                                              ; preds = %234
  %238 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %239 = call i32 @var_override(i8** @curl_http_proxy, i8* %238)
  %240 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %241 = call i32 @var_override(i8** @curl_http_proxy, i8* %240)
  br label %242

242:                                              ; preds = %237, %234
  br label %243

243:                                              ; preds = %242, %216
  %244 = load i8*, i8** @curl_http_proxy, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %256

246:                                              ; preds = %243
  %247 = load i8*, i8** @curl_http_proxy, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 0
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %246
  %253 = load i32*, i32** %1, align 8
  %254 = load i32, i32* @CURLOPT_PROXY, align 4
  %255 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %253, i32 %254, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0))
  br label %286

256:                                              ; preds = %246, %243
  %257 = load i8*, i8** @curl_http_proxy, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %285

259:                                              ; preds = %256
  %260 = load i8*, i8** @curl_http_proxy, align 8
  %261 = call i64 @strstr(i8* %260, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load i8*, i8** @curl_http_proxy, align 8
  %265 = call i32 @credential_from_url(%struct.TYPE_9__* @proxy_auth, i8* %264)
  br label %274

266:                                              ; preds = %259
  %267 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %267, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %268 = load i8*, i8** @curl_http_proxy, align 8
  %269 = call i32 @strbuf_addf(%struct.strbuf* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* %268)
  %270 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @credential_from_url(%struct.TYPE_9__* @proxy_auth, i8* %271)
  %273 = call i32 @strbuf_release(%struct.strbuf* %3)
  br label %274

274:                                              ; preds = %266, %263
  %275 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @proxy_auth, i32 0, i32 0), align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %280, label %277

277:                                              ; preds = %274
  %278 = load i8*, i8** @curl_http_proxy, align 8
  %279 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* %278)
  br label %280

280:                                              ; preds = %277, %274
  %281 = load i32*, i32** %1, align 8
  %282 = load i32, i32* @CURLOPT_PROXY, align 4
  %283 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @proxy_auth, i32 0, i32 0), align 8
  %284 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %281, i32 %282, i8* %283)
  br label %285

285:                                              ; preds = %280, %256
  br label %286

286:                                              ; preds = %285, %252
  %287 = load i32*, i32** %1, align 8
  %288 = call i32 @init_curl_proxy_auth(i32* %287)
  %289 = load i32*, i32** %1, align 8
  %290 = call i32 @set_curl_keepalive(i32* %289)
  %291 = load i32*, i32** %1, align 8
  ret i32* %291
}

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @init_curl_http_auth(i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i64 @has_cert_password(...) #1

declare dso_local i32 @setup_curl_trace(i32*) #1

declare dso_local i32 @string_list_split(i32*, i8*, i8 signext, i32) #1

declare dso_local i32 @string_list_sort(i32*) #1

declare dso_local i32 @git_user_agent(...) #1

declare dso_local i32 @var_override(i8**, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @credential_from_url(%struct.TYPE_9__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @init_curl_proxy_auth(i32*) #1

declare dso_local i32 @set_curl_keepalive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
