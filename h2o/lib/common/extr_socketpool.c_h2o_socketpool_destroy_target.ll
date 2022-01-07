; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_socketpool.c_h2o_socketpool_destroy_target.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_socketpool.c_h2o_socketpool_destroy_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_16__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_socketpool_destroy_target(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %3 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %14 [
    i32 129, label %6
    i32 128, label %13
  ]

6:                                                ; preds = %1
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %12 = call i32 @free(%struct.TYPE_16__* %11)
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %1, %13, %6
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = call i32 @free(%struct.TYPE_16__* %19)
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = call i32 @free(%struct.TYPE_16__* %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = call i32 @free(%struct.TYPE_16__* %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = call i32 @free(%struct.TYPE_16__* %33)
  ret void
}

declare dso_local i32 @free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
