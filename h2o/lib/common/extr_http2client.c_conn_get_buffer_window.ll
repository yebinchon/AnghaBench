; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_conn_get_buffer_window.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_conn_get_buffer_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_conn_t = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@H2O_HTTP2_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.st_h2o_http2client_conn_t*)* @conn_get_buffer_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @conn_get_buffer_window(%struct.st_h2o_http2client_conn_t* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.st_h2o_http2client_conn_t* %0, %struct.st_h2o_http2client_conn_t** %3, align 8
  %8 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %9 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %15 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %19 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i64 @h2o_socket_prepare_for_latency_optimized_write(i32 %17, i32* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %31 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %29, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i64 0, i64* %2, align 8
  br label %67

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %42 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %40, %46
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @H2O_HTTP2_FRAME_HEADER_SIZE, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store i64 0, i64* %2, align 8
  br label %67

52:                                               ; preds = %39
  %53 = load i64, i64* @H2O_HTTP2_FRAME_HEADER_SIZE, align 8
  %54 = load i64, i64* %4, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %4, align 8
  %56 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %57 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = call i64 @h2o_http2_window_get_avail(i32* %58)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %4, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i64, i64* %5, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %63, %52
  %66 = load i64, i64* %4, align 8
  store i64 %66, i64* %2, align 8
  br label %67

67:                                               ; preds = %65, %51, %37
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

declare dso_local i64 @h2o_socket_prepare_for_latency_optimized_write(i32, i32*) #1

declare dso_local i64 @h2o_http2_window_get_avail(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
