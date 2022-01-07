; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_ssl.c_setup_cache_enable.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_ssl.c_setup_cache_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SSL_SESS_CACHE_SERVER = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_NO_AUTO_CLEAR = common dso_local global i32 0, align 4
@H2O_SESSID_CTX = common dso_local global i32 0, align 4
@H2O_SESSID_CTX_LEN = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i64, i32)* @setup_cache_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_cache_enable(i32** %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %43, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  %13 = load i32**, i32*** %4, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @SSL_SESS_CACHE_SERVER, align 4
  %18 = load i32, i32* @SSL_SESS_CACHE_NO_AUTO_CLEAR, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @SSL_CTX_set_session_cache_mode(i32* %16, i32 %19)
  %21 = load i32**, i32*** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i32*, i32** %21, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @H2O_SESSID_CTX, align 4
  %26 = load i32, i32* @H2O_SESSID_CTX_LEN, align 4
  %27 = call i32 @SSL_CTX_set_session_id_context(i32* %24, i32 %25, i32 %26)
  %28 = load i32**, i32*** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32*, i32** %28, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  %33 = call i32 @SSL_CTX_set_timeout(i32* %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %12
  %37 = load i32**, i32*** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @h2o_socket_ssl_async_resumption_setup_ctx(i32* %40)
  br label %42

42:                                               ; preds = %36, %12
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %8

46:                                               ; preds = %8
  %47 = load i32**, i32*** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spawn_cache_cleanup_thread(i32** %47, i64 %48)
  ret void
}

declare dso_local i32 @SSL_CTX_set_session_cache_mode(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_session_id_context(i32*, i32, i32) #1

declare dso_local i32 @SSL_CTX_set_timeout(i32*, i32) #1

declare dso_local i32 @h2o_socket_ssl_async_resumption_setup_ctx(i32*) #1

declare dso_local i32 @spawn_cache_cleanup_thread(i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
