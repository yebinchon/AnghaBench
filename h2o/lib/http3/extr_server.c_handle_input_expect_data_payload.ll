; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_handle_input_expect_data_payload.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_handle_input_expect_data_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3_server_stream_t = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@H2O_HTTP3_ERROR_INTERNAL = common dso_local global i32 0, align 4
@handle_input_expect_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http3_server_stream_t*, i32**, i32*, i8**)* @handle_input_expect_data_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_input_expect_data_payload(%struct.st_h2o_http3_server_stream_t* %0, i32** %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_h2o_http3_server_stream_t*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  store %struct.st_h2o_http3_server_stream_t* %0, %struct.st_h2o_http3_server_stream_t** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = load i32**, i32*** %7, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = ptrtoint i32* %11 to i64
  %15 = ptrtoint i32* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %20 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ugt i64 %18, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %26 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %24, %4
  %30 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %31 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = icmp eq %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %36 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %35, i32 0, i32 2
  %37 = call i32 @h2o_buffer_init(%struct.TYPE_7__** %36, i32* @h2o_socket_buffer_prototype)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %40 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %39, i32 0, i32 2
  %41 = load i32**, i32*** %7, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @h2o_buffer_try_append(%struct.TYPE_7__** %40, i32* %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @H2O_HTTP3_ERROR_INTERNAL, align 4
  store i32 %47, i32* %5, align 4
  br label %90

48:                                               ; preds = %38
  %49 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %50 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %55 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @h2o_iovec_init(i32 %53, i32 %58)
  %60 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %61 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %65 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, %63
  store i64 %68, i64* %66, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %71 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %73, %69
  store i64 %74, i64* %72, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i32**, i32*** %7, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 %75
  store i32* %78, i32** %76, align 8
  %79 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %80 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %48
  %85 = load i32, i32* @handle_input_expect_data, align 4
  %86 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %6, align 8
  %87 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 8
  br label %89

89:                                               ; preds = %84, %48
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %46
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @h2o_buffer_init(%struct.TYPE_7__**, i32*) #1

declare dso_local i32 @h2o_buffer_try_append(%struct.TYPE_7__**, i32*, i64) #1

declare dso_local i32 @h2o_iovec_init(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
