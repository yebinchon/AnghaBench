; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_..minheap-internal.h_min_heap_pop_.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_..minheap-internal.h_min_heap_pop_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.event** }

@EV_SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event* @min_heap_pop_(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.event*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.event*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.event**, %struct.event*** %11, align 8
  %13 = load %struct.event*, %struct.event** %12, align 8
  store %struct.event* %13, %struct.event** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.event**, %struct.event*** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.event*, %struct.event** %17, i64 %22
  %24 = load %struct.event*, %struct.event** %23, align 8
  %25 = call i32 @min_heap_shift_down_(%struct.TYPE_6__* %14, i32 0, %struct.event* %24)
  %26 = load i32, i32* @EV_SIZE_MAX, align 4
  %27 = load %struct.event*, %struct.event** %4, align 8
  %28 = getelementptr inbounds %struct.event, %struct.event* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.event*, %struct.event** %4, align 8
  store %struct.event* %30, %struct.event** %2, align 8
  br label %32

31:                                               ; preds = %1
  store %struct.event* null, %struct.event** %2, align 8
  br label %32

32:                                               ; preds = %31, %9
  %33 = load %struct.event*, %struct.event** %2, align 8
  ret %struct.event* %33
}

declare dso_local i32 @min_heap_shift_down_(%struct.TYPE_6__*, i32, %struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
