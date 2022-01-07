; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_..minheap-internal.h_min_heap_erase_.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_..minheap-internal.h_min_heap_erase_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.event** }
%struct.event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EV_SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @min_heap_erase_(%struct.TYPE_7__* %0, %struct.event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.event*, align 8
  %6 = alloca %struct.event*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.event* %1, %struct.event** %5, align 8
  %8 = load i32, i32* @EV_SIZE_MAX, align 4
  %9 = load %struct.event*, %struct.event** %5, align 8
  %10 = getelementptr inbounds %struct.event, %struct.event* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %8, %12
  br i1 %13, label %14, label %67

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.event**, %struct.event*** %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = getelementptr inbounds %struct.event*, %struct.event** %17, i64 %21
  %23 = load %struct.event*, %struct.event** %22, align 8
  store %struct.event* %23, %struct.event** %6, align 8
  %24 = load %struct.event*, %struct.event** %5, align 8
  %25 = getelementptr inbounds %struct.event, %struct.event* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sdiv i32 %28, 2
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %7, align 8
  %31 = load %struct.event*, %struct.event** %5, align 8
  %32 = getelementptr inbounds %struct.event, %struct.event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %14
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.event**, %struct.event*** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.event*, %struct.event** %39, i64 %40
  %42 = load %struct.event*, %struct.event** %41, align 8
  %43 = load %struct.event*, %struct.event** %6, align 8
  %44 = call i64 @min_heap_elem_greater(%struct.event* %42, %struct.event* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = load %struct.event*, %struct.event** %5, align 8
  %49 = getelementptr inbounds %struct.event, %struct.event* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.event*, %struct.event** %6, align 8
  %53 = call i32 @min_heap_shift_up_unconditional_(%struct.TYPE_7__* %47, i32 %51, %struct.event* %52)
  br label %62

54:                                               ; preds = %36, %14
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = load %struct.event*, %struct.event** %5, align 8
  %57 = getelementptr inbounds %struct.event, %struct.event* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.event*, %struct.event** %6, align 8
  %61 = call i32 @min_heap_shift_down_(%struct.TYPE_7__* %55, i32 %59, %struct.event* %60)
  br label %62

62:                                               ; preds = %54, %46
  %63 = load i32, i32* @EV_SIZE_MAX, align 4
  %64 = load %struct.event*, %struct.event** %5, align 8
  %65 = getelementptr inbounds %struct.event, %struct.event* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  store i32 0, i32* %3, align 4
  br label %68

67:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @min_heap_elem_greater(%struct.event*, %struct.event*) #1

declare dso_local i32 @min_heap_shift_up_unconditional_(%struct.TYPE_7__*, i32, %struct.event*) #1

declare dso_local i32 @min_heap_shift_down_(%struct.TYPE_7__*, i32, %struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
