; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_h2o_httpclient__h2_get_max_concurrent_streams.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_h2o_httpclient__h2_get_max_concurrent_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_conn_t = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @h2o_httpclient__h2_get_max_concurrent_streams(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = bitcast i8* %5 to %struct.st_h2o_http2client_conn_t*
  store %struct.st_h2o_http2client_conn_t* %6, %struct.st_h2o_http2client_conn_t** %3, align 8
  %7 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %8 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %12 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %10, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %21 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %3, align 8
  %26 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  br label %32

32:                                               ; preds = %24, %19
  %33 = phi i64 [ %23, %19 ], [ %31, %24 ]
  ret i64 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
