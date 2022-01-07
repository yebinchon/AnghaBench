; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_close_stream.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http2client.c_close_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http2client_stream_t = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__, i32* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http2client_stream_t*)* @close_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_stream(%struct.st_h2o_http2client_stream_t* %0) #0 {
  %2 = alloca %struct.st_h2o_http2client_stream_t*, align 8
  store %struct.st_h2o_http2client_stream_t* %0, %struct.st_h2o_http2client_stream_t** %2, align 8
  %3 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %4 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %9 = call i32 @unregister_stream(%struct.st_h2o_http2client_stream_t* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %12 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = call i64 @h2o_timer_is_linked(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %18 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @h2o_timer_unlink(i32* %19)
  br label %21

21:                                               ; preds = %16, %10
  %22 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %23 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = call i64 @h2o_linklist_is_linked(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %29 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = call i32 @h2o_linklist_unlink(i32* %30)
  br label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %34 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %40 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @h2o_buffer_dispose(i32** %41)
  br label %43

43:                                               ; preds = %38, %32
  %44 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %45 = getelementptr inbounds %struct.st_h2o_http2client_stream_t, %struct.st_h2o_http2client_stream_t* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @h2o_buffer_dispose(i32** %46)
  %48 = load %struct.st_h2o_http2client_stream_t*, %struct.st_h2o_http2client_stream_t** %2, align 8
  %49 = call i32 @free(%struct.st_h2o_http2client_stream_t* %48)
  ret void
}

declare dso_local i32 @unregister_stream(%struct.st_h2o_http2client_stream_t*) #1

declare dso_local i64 @h2o_timer_is_linked(i32*) #1

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i64 @h2o_linklist_is_linked(i32*) #1

declare dso_local i32 @h2o_linklist_unlink(i32*) #1

declare dso_local i32 @h2o_buffer_dispose(i32**) #1

declare dso_local i32 @free(%struct.st_h2o_http2client_stream_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
