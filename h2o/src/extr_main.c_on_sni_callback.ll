; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_on_sni_callback.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_on_sni_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listener_config_t = type { i32 }
%struct.listener_ssl_config_t = type { i64 }

@TLSEXT_NAMETYPE_host_name = common dso_local global i32 0, align 4
@SSL_TLSEXT_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @on_sni_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_sni_callback(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.listener_config_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.listener_ssl_config_t*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.listener_config_t*
  store %struct.listener_config_t* %11, %struct.listener_config_t** %7, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @TLSEXT_NAMETYPE_host_name, align 4
  %14 = call i8* @SSL_get_servername(i32* %12, i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %3
  %18 = load %struct.listener_config_t*, %struct.listener_config_t** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = call %struct.listener_ssl_config_t* @resolve_sni(%struct.listener_config_t* %18, i8* %19, i32 %21)
  store %struct.listener_ssl_config_t* %22, %struct.listener_ssl_config_t** %9, align 8
  %23 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %9, align 8
  %24 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @SSL_get_SSL_CTX(i32* %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %9, align 8
  %32 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @SSL_set_SSL_CTX(i32* %30, i64 %33)
  br label %35

35:                                               ; preds = %29, %17
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i32, i32* @SSL_TLSEXT_ERR_OK, align 4
  ret i32 %37
}

declare dso_local i8* @SSL_get_servername(i32*, i32) #1

declare dso_local %struct.listener_ssl_config_t* @resolve_sni(%struct.listener_config_t*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @SSL_get_SSL_CTX(i32*) #1

declare dso_local i32 @SSL_set_SSL_CTX(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
