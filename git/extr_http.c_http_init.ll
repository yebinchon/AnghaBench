; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_http_init.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_http_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.remote = type { i32, i64 }
%struct.urlmatch_config = type { i8*, i32, i32, i32*, i32, i32, i32*, i32 }

@STRING_LIST_INIT_DUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"http\00", align 1
@http_options = common dso_local global i32 0, align 4
@git_default_config = common dso_local global i32 0, align 4
@http_is_verbose = common dso_local global i64 0, align 8
@urlmatch_config_entry = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"curl_global_init failed\00", align 1
@http_proactive_auth = common dso_local global i32 0, align 4
@curl_http_proxy = common dso_local global i32 0, align 4
@http_proxy_authmethod = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Pragma: no-cache\00", align 1
@pragma_header = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"Pragma:\00", align 1
@no_pragma_header = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"GIT_SSL_NO_VERIFY\00", align 1
@curl_ssl_verify = common dso_local global i32 0, align 4
@ssl_cert = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"GIT_SSL_CERT\00", align 1
@ssl_cainfo = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"GIT_SSL_CAINFO\00", align 1
@user_agent = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"GIT_HTTP_USER_AGENT\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"GIT_HTTP_LOW_SPEED_LIMIT\00", align 1
@curl_low_speed_limit = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"GIT_HTTP_LOW_SPEED_TIME\00", align 1
@curl_low_speed_time = common dso_local global i8* null, align 8
@curl_session_count = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"GIT_CURL_FTP_NO_EPSV\00", align 1
@curl_ftp_no_epsv = common dso_local global i32 0, align 4
@http_auth = common dso_local global i32 0, align 4
@ssl_cert_password_required = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"GIT_SSL_CERT_PASSWORD_PROTECTED\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@curl_default = common dso_local global i32 0, align 4
@DEFAULT_MAX_REQUESTS = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@curlm = common dso_local global i32 0, align 4
@http_ssl_backend = common dso_local global i64 0, align 8
@max_requests = common dso_local global i32 0, align 4
@ssl_capath = common dso_local global i32 0, align 4
@ssl_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_init(%struct.remote* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.remote*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.urlmatch_config, align 8
  store %struct.remote* %0, %struct.remote** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast %struct.urlmatch_config* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 48, i1 false)
  %12 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %10, i32 0, i32 0
  %13 = load i32, i32* @STRING_LIST_INIT_DUP, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %12, align 8
  %16 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %10, i32 0, i32 6
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @http_options, align 4
  %19 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %10, i32 0, i32 5
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @git_default_config, align 4
  %21 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %10, i32 0, i32 4
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %10, i32 0, i32 3
  store i32* null, i32** %22, align 8
  store i64 0, i64* @http_is_verbose, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %10, i32 0, i32 2
  %25 = call i8* @url_normalize(i8* %23, i32* %24)
  store i8* %25, i8** %9, align 8
  %26 = load i32, i32* @urlmatch_config_entry, align 4
  %27 = call i32 @git_config(i32 %26, %struct.urlmatch_config* %10)
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @free(i8* %28)
  %30 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %10, i32 0, i32 1
  %31 = call i32 @string_list_clear(i32* %30, i32 1)
  %32 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %33 = call i64 @curl_global_init(i32 %32)
  %34 = load i64, i64* @CURLE_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %3
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* @http_proactive_auth, align 4
  %40 = load %struct.remote*, %struct.remote** %4, align 8
  %41 = icmp ne %struct.remote* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load %struct.remote*, %struct.remote** %4, align 8
  %44 = getelementptr inbounds %struct.remote, %struct.remote* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.remote*, %struct.remote** %4, align 8
  %49 = getelementptr inbounds %struct.remote, %struct.remote* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @xstrdup(i64 %50)
  store i32 %51, i32* @curl_http_proxy, align 4
  br label %52

52:                                               ; preds = %47, %42, %38
  %53 = load %struct.remote*, %struct.remote** %4, align 8
  %54 = icmp ne %struct.remote* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.remote*, %struct.remote** %4, align 8
  %57 = getelementptr inbounds %struct.remote, %struct.remote* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @var_override(i32* @http_proxy_authmethod, i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = call i32 (...) @http_copy_default_headers()
  %62 = call i8* @curl_slist_append(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %62, i8** @pragma_header, align 8
  %63 = call i32 (...) @http_copy_default_headers()
  %64 = call i8* @curl_slist_append(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %64, i8** @no_pragma_header, align 8
  %65 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* @curl_ssl_verify, align 4
  br label %68

68:                                               ; preds = %67, %60
  %69 = call i32 @set_from_env(i32* @ssl_cert, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %70 = call i32 @set_from_env(i32* @ssl_cainfo, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %71 = call i32 @set_from_env(i32* @user_agent, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %72 = call i8* @getenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  store i8* %72, i8** %7, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i8*, i8** %7, align 8
  %77 = call i8* @strtol(i8* %76, i32* null, i32 10)
  store i8* %77, i8** @curl_low_speed_limit, align 8
  br label %78

78:                                               ; preds = %75, %68
  %79 = call i8* @getenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  store i8* %79, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8*, i8** %8, align 8
  %84 = call i8* @strtol(i8* %83, i32* null, i32 10)
  store i8* %84, i8** @curl_low_speed_time, align 8
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* @curl_ssl_verify, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 1, i32* @curl_ssl_verify, align 4
  br label %89

89:                                               ; preds = %88, %85
  store i64 0, i64* @curl_session_count, align 8
  %90 = call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 1, i32* @curl_ftp_no_epsv, align 4
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i8*, i8** %5, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @credential_from_url(i32* @http_auth, i8* %97)
  %99 = load i32, i32* @ssl_cert_password_required, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %96
  %102 = call i8* @getenv(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i8*, i8** %5, align 8
  %106 = call i64 @starts_with(i8* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 1, i32* @ssl_cert_password_required, align 4
  br label %109

109:                                              ; preds = %108, %104, %101, %96
  br label %110

110:                                              ; preds = %109, %93
  %111 = call i32 (...) @get_curl_handle()
  store i32 %111, i32* @curl_default, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @url_normalize(i8*, i32*) #2

declare dso_local i32 @git_config(i32, %struct.urlmatch_config*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @string_list_clear(i32*, i32) #2

declare dso_local i64 @curl_global_init(i32) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @xstrdup(i64) #2

declare dso_local i32 @var_override(i32*, i32) #2

declare dso_local i8* @curl_slist_append(i32, i8*) #2

declare dso_local i32 @http_copy_default_headers(...) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @set_from_env(i32*, i8*) #2

declare dso_local i8* @strtol(i8*, i32*, i32) #2

declare dso_local i32 @credential_from_url(i32*, i8*) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i32 @get_curl_handle(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
