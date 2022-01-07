; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_ssl.c_ssl_test_cleanup.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_ssl.c_ssl_test_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testcase_t = type { i32 }

@test_is_done = common dso_local global i64 0, align 8
@n_connected = common dso_local global i64 0, align 8
@got_close = common dso_local global i64 0, align 8
@got_error = common dso_local global i64 0, align 8
@got_timeout = common dso_local global i64 0, align 8
@renegotiate_at = common dso_local global i32 0, align 4
@stop_when_connected = common dso_local global i64 0, align 8
@pending_connect_events = common dso_local global i64 0, align 8
@exit_base = common dso_local global i32* null, align 8
@the_cert = common dso_local global i32 0, align 4
@the_key = common dso_local global i32 0, align 4
@the_ssl_ctx = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.testcase_t*, i8*)* @ssl_test_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_test_cleanup(%struct.testcase_t* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.testcase_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.testcase_t* %0, %struct.testcase_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.testcase_t*, %struct.testcase_t** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @basic_test_cleanup(%struct.testcase_t* %7, i8* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %21

14:                                               ; preds = %2
  store i64 0, i64* @test_is_done, align 8
  store i64 0, i64* @n_connected, align 8
  store i64 0, i64* @got_close, align 8
  store i64 0, i64* @got_error, align 8
  store i64 0, i64* @got_timeout, align 8
  store i32 -1, i32* @renegotiate_at, align 4
  store i64 0, i64* @stop_when_connected, align 8
  store i64 0, i64* @pending_connect_events, align 8
  store i32* null, i32** @exit_base, align 8
  %15 = load i32, i32* @the_cert, align 4
  %16 = call i32 @X509_free(i32 %15)
  %17 = load i32, i32* @the_key, align 4
  %18 = call i32 @EVP_PKEY_free(i32 %17)
  %19 = load i32*, i32** @the_ssl_ctx, align 8
  %20 = call i32 @SSL_CTX_free(i32* %19)
  store i32* null, i32** @the_ssl_ctx, align 8
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %14, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @basic_test_cleanup(%struct.testcase_t*, i8*) #1

declare dso_local i32 @X509_free(i32) #1

declare dso_local i32 @EVP_PKEY_free(i32) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
