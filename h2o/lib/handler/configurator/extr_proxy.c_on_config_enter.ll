; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_on_config_enter.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_on_config_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32* }
%struct.proxy_configurator_t = type { %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"share/h2o/ca-bundle.crt\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"Warning: failed to load the default certificates file at %s. Proxying to HTTPS servers may fail.\0A\00", align 1
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@SSL_VERIFY_FAIL_IF_NO_PEER_CERT = common dso_local global i32 0, align 4
@H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_CAPACITY = common dso_local global i32 0, align 4
@H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_DURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i32*)* @on_config_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_enter(i32* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.proxy_configurator_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to %struct.proxy_configurator_t*
  store %struct.proxy_configurator_t* %12, %struct.proxy_configurator_t** %7, align 8
  %13 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %7, align 8
  %14 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 1
  %17 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %7, align 8
  %18 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call i32 @memcpy(%struct.TYPE_8__* %16, %struct.TYPE_8__* %19, i32 16)
  %21 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %7, align 8
  %22 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %7, align 8
  %31 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @h2o_mem_addref_shared(i32* %36)
  br label %38

38:                                               ; preds = %29, %3
  %39 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %7, align 8
  %40 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 1
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %40, align 8
  %43 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %7, align 8
  %44 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %7, align 8
  %46 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %96

51:                                               ; preds = %38
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %96

56:                                               ; preds = %51
  %57 = call i32 (...) @create_ssl_ctx()
  %58 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %7, align 8
  %59 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  %62 = call i8* @h2o_configurator_get_cmd_path(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* %62, i8** %8, align 8
  %63 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %7, align 8
  %64 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @SSL_CTX_load_verify_locations(i32 %67, i8* %68, i32* null)
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %56
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @h2o_error_printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %56
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %7, align 8
  %78 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %83 = load i32, i32* @SSL_VERIFY_FAIL_IF_NO_PEER_CERT, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @SSL_CTX_set_verify(i32 %81, i32 %84, i32* null)
  %86 = load i32, i32* @H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_CAPACITY, align 4
  %87 = load i32, i32* @H2O_DEFAULT_PROXY_SSL_SESSION_CACHE_DURATION, align 4
  %88 = call i32* @create_ssl_session_cache(i32 %86, i32 %87)
  store i32* %88, i32** %9, align 8
  %89 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %7, align 8
  %90 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @h2o_socket_ssl_set_session_cache(i32 %93, i32* %94)
  br label %103

96:                                               ; preds = %51, %38
  %97 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %7, align 8
  %98 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @SSL_CTX_up_ref(i32 %101)
  br label %103

103:                                              ; preds = %96, %74
  ret i32 0
}

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @h2o_mem_addref_shared(i32*) #1

declare dso_local i32 @create_ssl_ctx(...) #1

declare dso_local i8* @h2o_configurator_get_cmd_path(i8*) #1

declare dso_local i32 @SSL_CTX_load_verify_locations(i32, i8*, i32*) #1

declare dso_local i32 @h2o_error_printf(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @SSL_CTX_set_verify(i32, i32, i32*) #1

declare dso_local i32* @create_ssl_session_cache(i32, i32) #1

declare dso_local i32 @h2o_socket_ssl_set_session_cache(i32, i32*) #1

declare dso_local i32 @SSL_CTX_up_ref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
