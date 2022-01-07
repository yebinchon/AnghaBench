; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_httpclient.c_start_request.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_httpclient.c_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32* }

@pool = common dso_local global i32 0, align 4
@req = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unrecognized type of URL: %s\00", align 1
@cur_req_body_size = common dso_local global i32 0, align 4
@on_connect = common dso_local global i32 0, align 4
@connpool = common dso_local global i32* null, align 8
@IO_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"H2O_ROOT\00", align 1
@H2O_ROOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"/share/h2o/ca-bundle.crt\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@ssl_verify_none = common dso_local global i64 0, align 8
@SSL_VERIFY_NONE = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@SSL_VERIFY_FAIL_IF_NO_PEER_CERT = common dso_local global i32 0, align 4
@CA_PATH = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @start_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_request(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = call i32 @h2o_mem_clear_pool(i32* @pool)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @h2o_mem_alloc_pool(i32* @pool, i32 %11, i32 1)
  store i32* %12, i32** %3, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @req, i32 0, i32 1), align 4
  %14 = load i32, i32* @SIZE_MAX, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @h2o_url_parse(i32 %13, i32 %14, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @req, i32 0, i32 1), align 4
  %21 = call i32 @on_error(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %102

22:                                               ; preds = %1
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @req, i32 0, i32 0), align 4
  store i32 %23, i32* @cur_req_body_size, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @on_connect, align 4
  %33 = call i32 @h2o_httpclient_connect_h3(i32* null, i32* @pool, i32* %29, %struct.TYPE_7__* %30, i32* %31, i32 %32)
  br label %102

34:                                               ; preds = %22
  %35 = load i32*, i32** @connpool, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %95

37:                                               ; preds = %34
  %38 = call i8* @h2o_mem_alloc(i32 4)
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** @connpool, align 8
  %40 = call i8* @h2o_mem_alloc(i32 4)
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = call i32* @h2o_socketpool_create_target(i32* %42, i32* null)
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @h2o_socketpool_init_specific(i32* %44, i32 10, i32** %5, i32 1, i32* null)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @IO_TIMEOUT, align 4
  %48 = call i32 @h2o_socketpool_set_timeout(i32* %46, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @h2o_socketpool_register_loop(i32* %49, i32 %52)
  %54 = load i32*, i32** @connpool, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @h2o_httpclient_connection_pool_init(i32* %54, i32* %55)
  %57 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %57, i8** %6, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %37
  %60 = load i32, i32* @H2O_ROOT, align 4
  %61 = call i8* @H2O_TO_STR(i32 %60)
  store i8* %61, i8** %6, align 8
  br label %62

62:                                               ; preds = %59, %37
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call i32 @strlen(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %66 = add nsw i32 %64, %65
  %67 = add nsw i32 %66, 1
  %68 = call i8* @h2o_mem_alloc(i32 %67)
  store i8* %68, i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @sprintf(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %72 = call i32 (...) @TLSv1_client_method()
  %73 = call i32* @SSL_CTX_new(i32 %72)
  store i32* %73, i32** %8, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @SSL_CTX_load_verify_locations(i32* %74, i8* %75, i32* null)
  %77 = load i64, i64* @ssl_verify_none, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %62
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* @SSL_VERIFY_NONE, align 4
  %82 = call i32 @SSL_CTX_set_verify(i32* %80, i32 %81, i32* null)
  br label %89

83:                                               ; preds = %62
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %86 = load i32, i32* @SSL_VERIFY_FAIL_IF_NO_PEER_CERT, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @SSL_CTX_set_verify(i32* %84, i32 %87, i32* null)
  br label %89

89:                                               ; preds = %83, %79
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @h2o_socketpool_set_ssl_ctx(i32* %90, i32* %91)
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @SSL_CTX_free(i32* %93)
  br label %95

95:                                               ; preds = %89, %34
  %96 = load i32*, i32** %3, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %98 = load i32*, i32** @connpool, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* @on_connect, align 4
  %101 = call i32 @h2o_httpclient_connect(i32* null, i32* @pool, i32* %96, %struct.TYPE_7__* %97, i32* %98, i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %18, %95, %28
  ret void
}

declare dso_local i32 @h2o_mem_clear_pool(i32*) #1

declare dso_local i32* @h2o_mem_alloc_pool(i32*, i32, i32) #1

declare dso_local i64 @h2o_url_parse(i32, i32, i32*) #1

declare dso_local i32 @on_error(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @h2o_httpclient_connect_h3(i32*, i32*, i32*, %struct.TYPE_7__*, i32*, i32) #1

declare dso_local i8* @h2o_mem_alloc(i32) #1

declare dso_local i32* @h2o_socketpool_create_target(i32*, i32*) #1

declare dso_local i32 @h2o_socketpool_init_specific(i32*, i32, i32**, i32, i32*) #1

declare dso_local i32 @h2o_socketpool_set_timeout(i32*, i32) #1

declare dso_local i32 @h2o_socketpool_register_loop(i32*, i32) #1

declare dso_local i32 @h2o_httpclient_connection_pool_init(i32*, i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @H2O_TO_STR(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLSv1_client_method(...) #1

declare dso_local i32 @SSL_CTX_load_verify_locations(i32*, i8*, i32*) #1

declare dso_local i32 @SSL_CTX_set_verify(i32*, i32, i32*) #1

declare dso_local i32 @h2o_socketpool_set_ssl_ctx(i32*, i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

declare dso_local i32 @h2o_httpclient_connect(i32*, i32*, i32*, %struct.TYPE_7__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
