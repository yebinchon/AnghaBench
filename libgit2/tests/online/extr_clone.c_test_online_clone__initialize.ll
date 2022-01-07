; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_10__, i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_FETCH_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@g_repo = common dso_local global i32* null, align 8
@g_options = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GIT_CLONE_OPTIONS_VERSION = common dso_local global i32 0, align 4
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@ssl_cert = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"GITTEST_REMOTE_URL\00", align 1
@_remote_url = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"GITTEST_REMOTE_USER\00", align 1
@_remote_user = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"GITTEST_REMOTE_PASS\00", align 1
@_remote_pass = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"GITTEST_REMOTE_SSL_NOVERIFY\00", align 1
@_remote_sslnoverify = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"GITTEST_REMOTE_SSH_PUBKEY\00", align 1
@_remote_ssh_pubkey = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"GITTEST_REMOTE_SSH_KEY\00", align 1
@_remote_ssh_privkey = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"GITTEST_REMOTE_SSH_PASSPHRASE\00", align 1
@_remote_ssh_passphrase = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"GITTEST_REMOTE_SSH_FINGERPRINT\00", align 1
@_remote_ssh_fingerprint = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"GITTEST_REMOTE_PROXY_SCHEME\00", align 1
@_remote_proxy_scheme = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"GITTEST_REMOTE_PROXY_HOST\00", align 1
@_remote_proxy_host = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"GITTEST_REMOTE_PROXY_USER\00", align 1
@_remote_proxy_user = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [26 x i8] c"GITTEST_REMOTE_PROXY_PASS\00", align 1
@_remote_proxy_pass = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [32 x i8] c"GITTEST_REMOTE_PROXY_SELFSIGNED\00", align 1
@_remote_proxy_selfsigned = common dso_local global i8* null, align 8
@_orig_proxies_need_reset = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_clone__initialize() #0 {
  %1 = alloca %struct.TYPE_10__, align 4
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %4 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_FETCH_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** @g_repo, align 8
  %5 = call i32 @memset(%struct.TYPE_11__* @g_options, i32 0, i32 4)
  %6 = load i32, i32* @GIT_CLONE_OPTIONS_VERSION, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_options, i32 0, i32 2), align 4
  %7 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_options, i32 0, i32 1) to i8*), i8* align 4 %7, i64 4, i1 false)
  %8 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_options, i32 0, i32 1, i32 0), align 4
  %9 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_11__* @g_options to i8*), i8* align 4 %9, i64 4, i1 false)
  %10 = load i32, i32* @ssl_cert, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_options, i32 0, i32 0, i32 0, i32 0), align 4
  %11 = call i8* @cl_getenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** @_remote_url, align 8
  %12 = call i8* @cl_getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** @_remote_user, align 8
  %13 = call i8* @cl_getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i8* %13, i8** @_remote_pass, align 8
  %14 = call i8* @cl_getenv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i8* %14, i8** @_remote_sslnoverify, align 8
  %15 = call i8* @cl_getenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i8* %15, i8** @_remote_ssh_pubkey, align 8
  %16 = call i8* @cl_getenv(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i8* %16, i8** @_remote_ssh_privkey, align 8
  %17 = call i8* @cl_getenv(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i8* %17, i8** @_remote_ssh_passphrase, align 8
  %18 = call i8* @cl_getenv(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  store i8* %18, i8** @_remote_ssh_fingerprint, align 8
  %19 = call i8* @cl_getenv(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  store i8* %19, i8** @_remote_proxy_scheme, align 8
  %20 = call i8* @cl_getenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  store i8* %20, i8** @_remote_proxy_host, align 8
  %21 = call i8* @cl_getenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  store i8* %21, i8** @_remote_proxy_user, align 8
  %22 = call i8* @cl_getenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  store i8* %22, i8** @_remote_proxy_pass, align 8
  %23 = call i8* @cl_getenv(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  store i8* %23, i8** @_remote_proxy_selfsigned, align 8
  store i64 0, i64* @_orig_proxies_need_reset, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i8* @cl_getenv(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
