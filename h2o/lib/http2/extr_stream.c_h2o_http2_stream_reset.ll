; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_stream.c_h2o_http2_stream_reset.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_stream.c_h2o_http2_stream_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_http2_stream_reset(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %30 [
    i32 134, label %8
    i32 132, label %8
    i32 133, label %8
    i32 131, label %8
    i32 128, label %12
    i32 130, label %12
    i32 129, label %12
    i32 135, label %16
  ]

8:                                                ; preds = %2, %2, %2, %2
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = call i32 @h2o_http2_stream_close(i32* %9, %struct.TYPE_7__* %10)
  br label %30

12:                                               ; preds = %2, %2, %2
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = call i32 @h2o_http2_stream_set_state(i32* %13, %struct.TYPE_7__* %14, i32 135)
  br label %16

16:                                               ; preds = %2, %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = call i32 @h2o_linklist_is_linked(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = call i32 @h2o_http2_stream_close(i32* %26, %struct.TYPE_7__* %27)
  br label %29

29:                                               ; preds = %25, %24
  br label %30

30:                                               ; preds = %2, %29, %8
  ret void
}

declare dso_local i32 @h2o_http2_stream_close(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @h2o_http2_stream_set_state(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @h2o_linklist_is_linked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
