; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_create_ssl_ctx.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_create_ssl_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_OP_NO_SSLv2 = common dso_local global i64 0, align 8
@SSL_OP_NO_SSLv3 = common dso_local global i64 0, align 8
@H2O_SESSID_CTX = common dso_local global i32 0, align 4
@H2O_SESSID_CTX_LEN = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_CLIENT = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_NO_INTERNAL_STORE = common dso_local global i32 0, align 4
@h2o_socket_ssl_new_session_cb = common dso_local global i32 0, align 4
@SSL_OP_NO_RENEGOTIATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @create_ssl_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_ssl_ctx() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 (...) @SSLv23_client_method()
  %4 = call i32* @SSL_CTX_new(i32 %3)
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @SSL_CTX_get_options(i32* %5)
  %7 = load i64, i64* @SSL_OP_NO_SSLv2, align 8
  %8 = or i64 %6, %7
  %9 = load i64, i64* @SSL_OP_NO_SSLv3, align 8
  %10 = or i64 %8, %9
  store i64 %10, i64* %1, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @SSL_CTX_set_options(i32* %11, i64 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @H2O_SESSID_CTX, align 4
  %16 = load i32, i32* @H2O_SESSID_CTX_LEN, align 4
  %17 = call i32 @SSL_CTX_set_session_id_context(i32* %14, i32 %15, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @SSL_SESS_CACHE_CLIENT, align 4
  %20 = load i32, i32* @SSL_SESS_CACHE_NO_INTERNAL_STORE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @SSL_CTX_set_session_cache_mode(i32* %18, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @h2o_socket_ssl_new_session_cb, align 4
  %25 = call i32 @SSL_CTX_sess_set_new_cb(i32* %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  ret i32* %26
}

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_client_method(...) #1

declare dso_local i64 @SSL_CTX_get_options(i32*) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i64) #1

declare dso_local i32 @SSL_CTX_set_session_id_context(i32*, i32, i32) #1

declare dso_local i32 @SSL_CTX_set_session_cache_mode(i32*, i32) #1

declare dso_local i32 @SSL_CTX_sess_set_new_cb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
