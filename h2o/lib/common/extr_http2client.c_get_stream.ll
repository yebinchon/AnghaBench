; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_get_stream.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_get_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_stream_t = type { i32 }
%struct.st_h2o_http2client_conn_t = type { i32 }

@stream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_h2o_http2client_stream_t* (%struct.st_h2o_http2client_conn_t*, i32)* @get_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_h2o_http2client_stream_t* @get_stream(%struct.st_h2o_http2client_conn_t* %0, i32 %1) #0 {
  %3 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  %4 = alloca %struct.st_h2o_http2client_conn_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.st_h2o_http2client_conn_t* %0, %struct.st_h2o_http2client_conn_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @stream, align 4
  %8 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %4, align 8
  %9 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @kh_get(i32 %7, i32 %10, i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %4, align 8
  %15 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @kh_end(i32 %16)
  %18 = icmp ne i64 %13, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.st_h2o_http2client_conn_t*, %struct.st_h2o_http2client_conn_t** %4, align 8
  %21 = getelementptr inbounds %struct.st_h2o_http2client_conn_t, %struct.st_h2o_http2client_conn_t* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @kh_val(i32 %22, i64 %23)
  %25 = inttoptr i64 %24 to %struct.st_h2o_http2client_stream_t*
  store %struct.st_h2o_http2client_stream_t* %25, %struct.st_h2o_http2client_stream_t** %3, align 8
  br label %27

26:                                               ; preds = %2
  store %struct.st_h2o_http2client_stream_t* null, %struct.st_h2o_http2client_stream_t** %3, align 8
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %3, align 8
  ret %struct.st_h2o_http2client_stream_t* %28
}

declare dso_local i64 @kh_get(i32, i32, i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local i64 @kh_val(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
