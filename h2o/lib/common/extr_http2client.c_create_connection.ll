; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_create_connection.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_create_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.st_h2o_http2client_conn_t = type { %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_14__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@H2O_HTTP2CLIENT_CONN_STATE_OPEN = common dso_local global i32 0, align 4
@H2O_HTTP2_SETTINGS_DEFAULT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@stream = common dso_local global i32 0, align 4
@on_io_timeout = common dso_local global i32 0, align 4
@on_keepalive_timeout = common dso_local global i32 0, align 4
@H2O_HTTP2_SETTINGS_CLIENT_HEADER_TABLE_SIZE = common dso_local global i32 0, align 4
@wbuf_buffer_prototype = common dso_local global i32 0, align 4
@emit_writereq = common dso_local global i32 0, align 4
@expect_settings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_h2o_http2client_conn_t* (i32*, i32*, i32*, %struct.TYPE_13__*)* @create_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_h2o_http2client_conn_t* @create_connection(i32* %0, i32* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  %10 = call %struct.st_h2o_http2client_conn_t* @h2o_mem_alloc(i32 88)
  store %struct.st_h2o_http2client_conn_t* %10, %struct.st_h2o_http2client_conn_t** %9, align 8
  %11 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %12 = call i32 @memset(%struct.st_h2o_http2client_conn_t* %11, i32 0, i32 88)
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %15 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 3
  store i32* %13, i32** %16, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %19 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  store i32* %17, i32** %20, align 8
  %21 = load i32, i32* @H2O_HTTP2CLIENT_CONN_STATE_OPEN, align 4
  %22 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %23 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %25 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %24, i32 0, i32 2
  %26 = bitcast %struct.TYPE_14__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 4 bitcast (%struct.TYPE_14__* @H2O_HTTP2_SETTINGS_DEFAULT to i8*), i64 8, i1 false)
  %27 = load i32, i32* @stream, align 4
  %28 = call i32 @kh_init(i32 %27)
  %29 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %30 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %32 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @h2o_url_copy(i32* null, i32* %33, i32* %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = icmp ne %struct.TYPE_13__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %43 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = call i32 @h2o_linklist_insert(i32* %41, i32* %44)
  br label %46

46:                                               ; preds = %38, %4
  %47 = load i32, i32* @on_io_timeout, align 4
  %48 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %49 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @on_keepalive_timeout, align 4
  %52 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %53 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @H2O_HTTP2_SETTINGS_CLIENT_HEADER_TABLE_SIZE, align 4
  %56 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %57 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %61 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 4
  %63 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %64 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @h2o_http2_window_init(i32* %62, i32 %66)
  %68 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %69 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 3
  %71 = call i32 @h2o_buffer_init(i32* %70, i32* @wbuf_buffer_prototype)
  %72 = load i32, i32* @emit_writereq, align 4
  %73 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %74 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  %77 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %78 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = call i32 @h2o_linklist_init_anchor(i32* %79)
  %81 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %82 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = call i32 @h2o_linklist_init_anchor(i32* %83)
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @H2O_HTTP2_SETTINGS_DEFAULT, i32 0, i32 1), align 4
  %86 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %87 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  %90 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %91 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  store i32 %85, i32* %93, align 4
  %94 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %95 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @H2O_HTTP2_SETTINGS_DEFAULT, i32 0, i32 0), align 4
  %98 = call i32 @h2o_http2_window_init(i32* %96, i32 %97)
  %99 = load i32, i32* @expect_settings, align 4
  %100 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  %101 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %9, align 8
  ret %struct.st_h2o_http2client_conn_t* %103
}

declare dso_local %struct.st_h2o_http2client_conn_t* @h2o_mem_alloc(i32) #1

declare dso_local i32 @memset(%struct.st_h2o_http2client_conn_t*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kh_init(i32) #1

declare dso_local i32 @h2o_url_copy(i32*, i32*, i32*) #1

declare dso_local i32 @h2o_linklist_insert(i32*, i32*) #1

declare dso_local i32 @h2o_http2_window_init(i32*, i32) #1

declare dso_local i32 @h2o_buffer_init(i32*, i32*) #1

declare dso_local i32 @h2o_linklist_init_anchor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
