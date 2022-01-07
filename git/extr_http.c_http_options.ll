; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_http_options.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_http_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"http.version\00", align 1
@curl_http_version = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"http.sslverify\00", align 1
@curl_ssl_verify = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"http.sslcipherlist\00", align 1
@ssl_cipherlist = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"http.sslversion\00", align 1
@ssl_version = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"http.sslcert\00", align 1
@ssl_cert = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"http.sslcainfo\00", align 1
@ssl_cainfo = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"http.sslcertpasswordprotected\00", align 1
@ssl_cert_password_required = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"http.ssltry\00", align 1
@curl_ssl_try = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"http.sslbackend\00", align 1
@http_ssl_backend = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"http.schannelcheckrevoke\00", align 1
@http_schannel_check_revoke = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"http.schannelusesslcainfo\00", align 1
@http_schannel_use_ssl_cainfo = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"http.minsessions\00", align 1
@min_curl_sessions = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"http.lowspeedlimit\00", align 1
@curl_low_speed_limit = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [18 x i8] c"http.lowspeedtime\00", align 1
@curl_low_speed_time = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"http.noepsv\00", align 1
@curl_ftp_no_epsv = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"http.proxy\00", align 1
@curl_http_proxy = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"http.proxyauthmethod\00", align 1
@http_proxy_authmethod = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"http.cookiefile\00", align 1
@curl_cookie_file = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"http.savecookies\00", align 1
@curl_save_cookies = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"http.postbuffer\00", align 1
@http_post_buffer = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [53 x i8] c"negative value for http.postbuffer; defaulting to %d\00", align 1
@LARGE_PACKET_MAX = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [15 x i8] c"http.useragent\00", align 1
@user_agent = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"http.emptyauth\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@curl_empty_auth = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [16 x i8] c"http.delegation\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"Delegation control is not supported with cURL < 7.22.0\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"http.pinnedpubkey\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"Public key pinning not supported with cURL < 7.44.0\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"http.extraheader\00", align 1
@extra_http_headers = common dso_local global i32* null, align 8
@.str.29 = private unnamed_addr constant [21 x i8] c"http.followredirects\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@HTTP_FOLLOW_INITIAL = common dso_local global i32 0, align 4
@http_follow_config = common dso_local global i32 0, align 4
@HTTP_FOLLOW_ALWAYS = common dso_local global i32 0, align 4
@HTTP_FOLLOW_NONE = common dso_local global i32 0, align 4
@curl_deleg = common dso_local global i32 0, align 4
@max_requests = common dso_local global i8* null, align 8
@ssl_capath = common dso_local global i32 0, align 4
@ssl_key = common dso_local global i32 0, align 4
@ssl_pinnedkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @http_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_options(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @git_config_string(i32* @curl_http_version, i8* %12, i8* %13)
  store i32 %14, i32* %4, align 4
  br label %279

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @git_config_bool(i8* %20, i8* %21)
  store i32 %22, i32* @curl_ssl_verify, align 4
  store i32 0, i32* %4, align 4
  br label %279

23:                                               ; preds = %15
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strcmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @git_config_string(i32* @ssl_cipherlist, i8* %28, i8* %29)
  store i32 %30, i32* %4, align 4
  br label %279

31:                                               ; preds = %23
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @git_config_string(i32* @ssl_version, i8* %36, i8* %37)
  store i32 %38, i32* %4, align 4
  br label %279

39:                                               ; preds = %31
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @git_config_pathname(i32* @ssl_cert, i8* %44, i8* %45)
  store i32 %46, i32* %4, align 4
  br label %279

47:                                               ; preds = %39
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @git_config_pathname(i32* @ssl_cainfo, i8* %52, i8* %53)
  store i32 %54, i32* %4, align 4
  br label %279

55:                                               ; preds = %47
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @strcmp(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @git_config_bool(i8* %60, i8* %61)
  store i32 %62, i32* @ssl_cert_password_required, align 4
  store i32 0, i32* %4, align 4
  br label %279

63:                                               ; preds = %55
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @git_config_bool(i8* %68, i8* %69)
  store i32 %70, i32* @curl_ssl_try, align 4
  store i32 0, i32* %4, align 4
  br label %279

71:                                               ; preds = %63
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @http_ssl_backend, align 4
  %77 = call i32 @free(i32 %76)
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @xstrdup_or_null(i8* %78)
  store i32 %79, i32* @http_ssl_backend, align 4
  store i32 0, i32* %4, align 4
  br label %279

80:                                               ; preds = %71
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @strcmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @git_config_bool(i8* %85, i8* %86)
  store i32 %87, i32* @http_schannel_check_revoke, align 4
  store i32 0, i32* %4, align 4
  br label %279

88:                                               ; preds = %80
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @strcmp(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @git_config_bool(i8* %93, i8* %94)
  store i32 %95, i32* @http_schannel_use_ssl_cainfo, align 4
  store i32 0, i32* %4, align 4
  br label %279

96:                                               ; preds = %88
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %96
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = call i8* @git_config_int(i8* %101, i8* %102)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* @min_curl_sessions, align 4
  %105 = load i32, i32* @min_curl_sessions, align 4
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store i32 1, i32* @min_curl_sessions, align 4
  br label %108

108:                                              ; preds = %107, %100
  store i32 0, i32* %4, align 4
  br label %279

109:                                              ; preds = %96
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @strcmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = load i8*, i8** %5, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = call i8* @git_config_int(i8* %114, i8* %115)
  %117 = ptrtoint i8* %116 to i64
  store i64 %117, i64* @curl_low_speed_limit, align 8
  store i32 0, i32* %4, align 4
  br label %279

118:                                              ; preds = %109
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @strcmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load i8*, i8** %5, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call i8* @git_config_int(i8* %123, i8* %124)
  %126 = ptrtoint i8* %125 to i64
  store i64 %126, i64* @curl_low_speed_time, align 8
  store i32 0, i32* %4, align 4
  br label %279

127:                                              ; preds = %118
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i8*, i8** %5, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @git_config_bool(i8* %132, i8* %133)
  store i32 %134, i32* @curl_ftp_no_epsv, align 4
  store i32 0, i32* %4, align 4
  br label %279

135:                                              ; preds = %127
  %136 = load i8*, i8** %5, align 8
  %137 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i8*, i8** %5, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @git_config_string(i32* @curl_http_proxy, i8* %140, i8* %141)
  store i32 %142, i32* %4, align 4
  br label %279

143:                                              ; preds = %135
  %144 = load i8*, i8** %5, align 8
  %145 = call i32 @strcmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i8*, i8** %5, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @git_config_string(i32* @http_proxy_authmethod, i8* %148, i8* %149)
  store i32 %150, i32* %4, align 4
  br label %279

151:                                              ; preds = %143
  %152 = load i8*, i8** %5, align 8
  %153 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = load i8*, i8** %5, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 @git_config_pathname(i32* @curl_cookie_file, i8* %156, i8* %157)
  store i32 %158, i32* %4, align 4
  br label %279

159:                                              ; preds = %151
  %160 = load i8*, i8** %5, align 8
  %161 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = load i8*, i8** %5, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = call i32 @git_config_bool(i8* %164, i8* %165)
  store i32 %166, i32* @curl_save_cookies, align 4
  store i32 0, i32* %4, align 4
  br label %279

167:                                              ; preds = %159
  %168 = load i8*, i8** %5, align 8
  %169 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %188, label %171

171:                                              ; preds = %167
  %172 = load i8*, i8** %5, align 8
  %173 = load i8*, i8** %6, align 8
  %174 = call i64 @git_config_ssize_t(i8* %172, i8* %173)
  store i64 %174, i64* @http_post_buffer, align 8
  %175 = load i64, i64* @http_post_buffer, align 8
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0))
  %179 = load i64, i64* @LARGE_PACKET_MAX, align 8
  %180 = call i32 (i32, ...) @warning(i32 %178, i64 %179)
  br label %181

181:                                              ; preds = %177, %171
  %182 = load i64, i64* @http_post_buffer, align 8
  %183 = load i64, i64* @LARGE_PACKET_MAX, align 8
  %184 = icmp slt i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i64, i64* @LARGE_PACKET_MAX, align 8
  store i64 %186, i64* @http_post_buffer, align 8
  br label %187

187:                                              ; preds = %185, %181
  store i32 0, i32* %4, align 4
  br label %279

188:                                              ; preds = %167
  %189 = load i8*, i8** %5, align 8
  %190 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = load i8*, i8** %5, align 8
  %194 = load i8*, i8** %6, align 8
  %195 = call i32 @git_config_string(i32* @user_agent, i8* %193, i8* %194)
  store i32 %195, i32* %4, align 4
  br label %279

196:                                              ; preds = %188
  %197 = load i8*, i8** %5, align 8
  %198 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %213, label %200

200:                                              ; preds = %196
  %201 = load i8*, i8** %6, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load i8*, i8** %6, align 8
  %205 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %203
  store i32 -1, i32* @curl_empty_auth, align 4
  br label %212

208:                                              ; preds = %203, %200
  %209 = load i8*, i8** %5, align 8
  %210 = load i8*, i8** %6, align 8
  %211 = call i32 @git_config_bool(i8* %209, i8* %210)
  store i32 %211, i32* @curl_empty_auth, align 4
  br label %212

212:                                              ; preds = %208, %207
  store i32 0, i32* %4, align 4
  br label %279

213:                                              ; preds = %196
  %214 = load i8*, i8** %5, align 8
  %215 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i8* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %213
  %218 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.25, i64 0, i64 0))
  %219 = call i32 (i32, ...) @warning(i32 %218)
  store i32 0, i32* %4, align 4
  br label %279

220:                                              ; preds = %213
  %221 = load i8*, i8** %5, align 8
  %222 = call i32 @strcmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %220
  %225 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i64 0, i64 0))
  %226 = call i32 (i32, ...) @warning(i32 %225)
  store i32 0, i32* %4, align 4
  br label %279

227:                                              ; preds = %220
  %228 = load i8*, i8** %5, align 8
  %229 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %250, label %231

231:                                              ; preds = %227
  %232 = load i8*, i8** %6, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load i8*, i8** %5, align 8
  %236 = call i32 @config_error_nonbool(i8* %235)
  store i32 %236, i32* %4, align 4
  br label %279

237:                                              ; preds = %231
  %238 = load i8*, i8** %6, align 8
  %239 = load i8, i8* %238, align 1
  %240 = icmp ne i8 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %237
  %242 = load i32*, i32** @extra_http_headers, align 8
  %243 = call i32 @curl_slist_free_all(i32* %242)
  store i32* null, i32** @extra_http_headers, align 8
  br label %248

244:                                              ; preds = %237
  %245 = load i32*, i32** @extra_http_headers, align 8
  %246 = load i8*, i8** %6, align 8
  %247 = call i32* @curl_slist_append(i32* %245, i8* %246)
  store i32* %247, i32** @extra_http_headers, align 8
  br label %248

248:                                              ; preds = %244, %241
  br label %249

249:                                              ; preds = %248
  store i32 0, i32* %4, align 4
  br label %279

250:                                              ; preds = %227
  %251 = load i8*, i8** %5, align 8
  %252 = call i32 @strcmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i8* %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %274, label %254

254:                                              ; preds = %250
  %255 = load i8*, i8** %6, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %263

257:                                              ; preds = %254
  %258 = load i8*, i8** %6, align 8
  %259 = call i32 @strcmp(i8* %258, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %257
  %262 = load i32, i32* @HTTP_FOLLOW_INITIAL, align 4
  store i32 %262, i32* @http_follow_config, align 4
  br label %273

263:                                              ; preds = %257, %254
  %264 = load i8*, i8** %5, align 8
  %265 = load i8*, i8** %6, align 8
  %266 = call i32 @git_config_bool(i8* %264, i8* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %263
  %269 = load i32, i32* @HTTP_FOLLOW_ALWAYS, align 4
  store i32 %269, i32* @http_follow_config, align 4
  br label %272

270:                                              ; preds = %263
  %271 = load i32, i32* @HTTP_FOLLOW_NONE, align 4
  store i32 %271, i32* @http_follow_config, align 4
  br label %272

272:                                              ; preds = %270, %268
  br label %273

273:                                              ; preds = %272, %261
  store i32 0, i32* %4, align 4
  br label %279

274:                                              ; preds = %250
  %275 = load i8*, i8** %5, align 8
  %276 = load i8*, i8** %6, align 8
  %277 = load i8*, i8** %7, align 8
  %278 = call i32 @git_default_config(i8* %275, i8* %276, i8* %277)
  store i32 %278, i32* %4, align 4
  br label %279

279:                                              ; preds = %274, %273, %249, %234, %224, %217, %212, %192, %187, %163, %155, %147, %139, %131, %122, %113, %108, %92, %84, %75, %67, %59, %51, %43, %35, %27, %19, %11
  %280 = load i32, i32* %4, align 4
  ret i32 %280
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

declare dso_local i32 @git_config_pathname(i32*, i8*, i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @xstrdup_or_null(i8*) #1

declare dso_local i8* @git_config_int(i8*, i8*) #1

declare dso_local i64 @git_config_ssize_t(i8*, i8*) #1

declare dso_local i32 @warning(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @curl_slist_free_all(i32*) #1

declare dso_local i32* @curl_slist_append(i32*, i8*) #1

declare dso_local i32 @git_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
