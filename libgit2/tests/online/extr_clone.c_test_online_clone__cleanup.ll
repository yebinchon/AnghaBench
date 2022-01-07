; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__cleanup.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_test_online_clone__cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"./foo\00", align 1
@_remote_url = common dso_local global i32 0, align 4
@_remote_user = common dso_local global i32 0, align 4
@_remote_pass = common dso_local global i32 0, align 4
@_remote_sslnoverify = common dso_local global i32 0, align 4
@_remote_ssh_pubkey = common dso_local global i32 0, align 4
@_remote_ssh_privkey = common dso_local global i32 0, align 4
@_remote_ssh_passphrase = common dso_local global i32 0, align 4
@_remote_ssh_fingerprint = common dso_local global i32 0, align 4
@_remote_proxy_scheme = common dso_local global i32 0, align 4
@_remote_proxy_host = common dso_local global i32 0, align 4
@_remote_proxy_user = common dso_local global i32 0, align 4
@_remote_proxy_pass = common dso_local global i32 0, align 4
@_remote_proxy_selfsigned = common dso_local global i32 0, align 4
@_orig_proxies_need_reset = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"HTTP_PROXY\00", align 1
@_orig_http_proxy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"HTTPS_PROXY\00", align 1
@_orig_https_proxy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_online_clone__cleanup() #0 {
  %1 = load i32*, i32** @g_repo, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32*, i32** @g_repo, align 8
  %5 = call i32 @git_repository_free(i32* %4)
  store i32* null, i32** @g_repo, align 8
  br label %6

6:                                                ; preds = %3, %0
  %7 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @_remote_url, align 4
  %9 = call i32 @git__free(i32 %8)
  %10 = load i32, i32* @_remote_user, align 4
  %11 = call i32 @git__free(i32 %10)
  %12 = load i32, i32* @_remote_pass, align 4
  %13 = call i32 @git__free(i32 %12)
  %14 = load i32, i32* @_remote_sslnoverify, align 4
  %15 = call i32 @git__free(i32 %14)
  %16 = load i32, i32* @_remote_ssh_pubkey, align 4
  %17 = call i32 @git__free(i32 %16)
  %18 = load i32, i32* @_remote_ssh_privkey, align 4
  %19 = call i32 @git__free(i32 %18)
  %20 = load i32, i32* @_remote_ssh_passphrase, align 4
  %21 = call i32 @git__free(i32 %20)
  %22 = load i32, i32* @_remote_ssh_fingerprint, align 4
  %23 = call i32 @git__free(i32 %22)
  %24 = load i32, i32* @_remote_proxy_scheme, align 4
  %25 = call i32 @git__free(i32 %24)
  %26 = load i32, i32* @_remote_proxy_host, align 4
  %27 = call i32 @git__free(i32 %26)
  %28 = load i32, i32* @_remote_proxy_user, align 4
  %29 = call i32 @git__free(i32 %28)
  %30 = load i32, i32* @_remote_proxy_pass, align 4
  %31 = call i32 @git__free(i32 %30)
  %32 = load i32, i32* @_remote_proxy_selfsigned, align 4
  %33 = call i32 @git__free(i32 %32)
  %34 = load i64, i64* @_orig_proxies_need_reset, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %6
  %37 = load i32, i32* @_orig_http_proxy, align 4
  %38 = call i32 @cl_setenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @_orig_https_proxy, align 4
  %40 = call i32 @cl_setenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @_orig_http_proxy, align 4
  %42 = call i32 @git__free(i32 %41)
  %43 = load i32, i32* @_orig_https_proxy, align 4
  %44 = call i32 @git__free(i32 %43)
  br label %45

45:                                               ; preds = %36, %6
  ret void
}

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

declare dso_local i32 @git__free(i32) #1

declare dso_local i32 @cl_setenv(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
