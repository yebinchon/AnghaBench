; ModuleID = '/home/carl/AnghaBench/libevent/extr_minheap-internal.h_min_heap_adjust_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_minheap-internal.h_min_heap_adjust_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.event = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@EV_SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @min_heap_adjust_(%struct.TYPE_8__* %0, %struct.event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.event*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.event* %1, %struct.event** %5, align 8
  %7 = load i32, i32* @EV_SIZE_MAX, align 4
  %8 = load %struct.event*, %struct.event** %5, align 8
  %9 = getelementptr inbounds %struct.event, %struct.event* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = load %struct.event*, %struct.event** %5, align 8
  %16 = call i32 @min_heap_push_(%struct.TYPE_8__* %14, %struct.event* %15)
  store i32 %16, i32* %3, align 4
  br label %57

17:                                               ; preds = %2
  %18 = load %struct.event*, %struct.event** %5, align 8
  %19 = getelementptr inbounds %struct.event, %struct.event* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sdiv i32 %22, 2
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %6, align 8
  %25 = load %struct.event*, %struct.event** %5, align 8
  %26 = getelementptr inbounds %struct.event, %struct.event* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %17
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.event*, %struct.event** %5, align 8
  %38 = call i64 @min_heap_elem_greater(i32 %36, %struct.event* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = load %struct.event*, %struct.event** %5, align 8
  %43 = getelementptr inbounds %struct.event, %struct.event* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.event*, %struct.event** %5, align 8
  %47 = call i32 @min_heap_shift_up_unconditional_(%struct.TYPE_8__* %41, i32 %45, %struct.event* %46)
  br label %56

48:                                               ; preds = %30, %17
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = load %struct.event*, %struct.event** %5, align 8
  %51 = getelementptr inbounds %struct.event, %struct.event* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.event*, %struct.event** %5, align 8
  %55 = call i32 @min_heap_shift_down_(%struct.TYPE_8__* %49, i32 %53, %struct.event* %54)
  br label %56

56:                                               ; preds = %48, %40
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @min_heap_push_(%struct.TYPE_8__*, %struct.event*) #1

declare dso_local i64 @min_heap_elem_greater(i32, %struct.event*) #1

declare dso_local i32 @min_heap_shift_up_unconditional_(%struct.TYPE_8__*, i32, %struct.event*) #1

declare dso_local i32 @min_heap_shift_down_(%struct.TYPE_8__*, i32, %struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
