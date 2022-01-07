; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_update_stream_output_window.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_update_stream_output_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_stream_t = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http2client_stream_t*, i64)* @update_stream_output_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_stream_output_window(%struct.st_h2o_http2client_stream_t* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.st_h2o_http2client_stream_t* %0, %struct.st_h2o_http2client_stream_t** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %4, align 8
  %9 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = call i64 @h2o_http2_window_get_avail(i32* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %4, align 8
  %13 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @h2o_http2_window_update(i32* %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %62

19:                                               ; preds = %2
  %20 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %4, align 8
  %21 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = call i64 @h2o_http2_window_get_avail(i32* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %19
  %27 = load i64, i64* %7, align 8
  %28 = icmp slt i64 0, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %26
  %30 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %4, align 8
  %31 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %29
  %36 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %4, align 8
  %37 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %35
  %44 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %4, align 8
  %45 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = call i32 @h2o_linklist_is_linked(i32* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %4, align 8
  %53 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %4, align 8
  %58 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = call i32 @h2o_linklist_insert(i32* %56, i32* %59)
  br label %61

61:                                               ; preds = %43, %35, %29, %26, %19
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @h2o_http2_window_get_avail(i32*) #1

declare dso_local i64 @h2o_http2_window_update(i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_linklist_is_linked(i32*) #1

declare dso_local i32 @h2o_linklist_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
