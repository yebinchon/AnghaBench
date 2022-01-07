; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_context.c_h2o_context_request_shutdown.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_context.c_h2o_context_request_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*)* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_15__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_context_request_shutdown(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %3 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %10, align 8
  %12 = icmp ne i32 (%struct.TYPE_15__*)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %19, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = call i32 %20(%struct.TYPE_15__* %21)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %29, align 8
  %31 = icmp ne i32 (%struct.TYPE_15__*)* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %38, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = call i32 %39(%struct.TYPE_15__* %40)
  br label %42

42:                                               ; preds = %32, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
