; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_clear_pipein.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_clear_pipein.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32* }

@wsconfig = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@F_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @ws_clear_pipein to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws_clear_pipein(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32** %5, i32*** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %35

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @close(i32 %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load i32**, i32*** %3, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @ws_clear_fifo_packet(i32* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = call i32 @free(%struct.TYPE_5__* %23)
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wsconfig, i32 0, i32 0), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wsconfig, i32 0, i32 0), align 8
  %29 = load i32, i32* @F_OK, align 4
  %30 = call i32 @access(i64 %28, i32 %29)
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wsconfig, i32 0, i32 0), align 8
  %34 = call i32 @unlink(i64 %33)
  br label %35

35:                                               ; preds = %8, %32, %27, %19
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ws_clear_fifo_packet(i32*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @access(i64, i32) #1

declare dso_local i32 @unlink(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
