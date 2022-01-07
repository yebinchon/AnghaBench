; ModuleID = '/home/carl/AnghaBench/libevent/extr_minheap-internal.h_min_heap_shift_up_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_minheap-internal.h_min_heap_shift_up_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.event** }
%struct.event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @min_heap_shift_up_(%struct.TYPE_5__* %0, i64 %1, %struct.event* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.event*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.event* %2, %struct.event** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = sub i64 %8, 1
  %10 = udiv i64 %9, 2
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %26, %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.event**, %struct.event*** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.event*, %struct.event** %17, i64 %18
  %20 = load %struct.event*, %struct.event** %19, align 8
  %21 = load %struct.event*, %struct.event** %6, align 8
  %22 = call i64 @min_heap_elem_greater(%struct.event* %20, %struct.event* %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %14, %11
  %25 = phi i1 [ false, %11 ], [ %23, %14 ]
  br i1 %25, label %26, label %45

26:                                               ; preds = %24
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.event**, %struct.event*** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.event*, %struct.event** %30, i64 %31
  %33 = load %struct.event*, %struct.event** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.event**, %struct.event*** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.event*, %struct.event** %36, i64 %37
  store %struct.event* %33, %struct.event** %38, align 8
  %39 = getelementptr inbounds %struct.event, %struct.event* %33, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 %27, i64* %40, align 8
  %41 = load i64, i64* %7, align 8
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = sub i64 %42, 1
  %44 = udiv i64 %43, 2
  store i64 %44, i64* %7, align 8
  br label %11

45:                                               ; preds = %24
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.event*, %struct.event** %6, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.event**, %struct.event*** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.event*, %struct.event** %50, i64 %51
  store %struct.event* %47, %struct.event** %52, align 8
  %53 = getelementptr inbounds %struct.event, %struct.event* %47, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 %46, i64* %54, align 8
  ret void
}

declare dso_local i64 @min_heap_elem_greater(%struct.event*, %struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
