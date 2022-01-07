; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_update_stream_output_window.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_connection.c_update_stream_output_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@H2O_HTTP2_STREAM_STATE_SEND_BODY_IS_FINAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @update_stream_output_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_stream_output_window(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = call i64 @h2o_http2_window_get_avail(i32* %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @h2o_http2_window_update(i32* %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = call i64 @h2o_http2_window_get_avail(i32* %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = call i64 @h2o_http2_stream_has_pending_data(%struct.TYPE_4__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @H2O_HTTP2_STREAM_STATE_SEND_BODY_IS_FINAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28, %24
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = call i32 @h2o_linklist_is_linked(i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = call i32 @h2o_http2_scheduler_activate(i32* %43)
  br label %45

45:                                               ; preds = %34, %28, %19, %16
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @h2o_http2_window_get_avail(i32*) #1

declare dso_local i64 @h2o_http2_window_update(i32*, i64) #1

declare dso_local i64 @h2o_http2_stream_has_pending_data(%struct.TYPE_4__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_linklist_is_linked(i32*) #1

declare dso_local i32 @h2o_http2_scheduler_activate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
