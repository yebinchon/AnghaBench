; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_calc_max_payload_size.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_calc_max_payload_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_stream_t = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.st_h2o_http2client_stream_t*)* @calc_max_payload_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_max_payload_size(%struct.st_h2o_http2client_stream_t* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.st_h2o_http2client_stream_t* %0, %struct.st_h2o_http2client_stream_t** %3, align 8
  %6 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %7 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = call i64 @conn_get_buffer_window(%struct.TYPE_6__* %8)
  store i64 %9, i64* %4, align 8
  %10 = icmp ule i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %14 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i64 @h2o_http2_window_get_avail(i32* %15)
  store i64 %16, i64* %5, align 8
  %17 = icmp ule i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i64 0, i64* %2, align 8
  br label %30

19:                                               ; preds = %12
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @sz_min(i64 %20, i64 %21)
  %23 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  %24 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @sz_min(i64 %22, i64 %28)
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %19, %18, %11
  %31 = load i64, i64* %2, align 8
  ret i64 %31
}

declare dso_local i64 @conn_get_buffer_window(%struct.TYPE_6__*) #1

declare dso_local i64 @h2o_http2_window_get_avail(i32*) #1

declare dso_local i64 @sz_min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
