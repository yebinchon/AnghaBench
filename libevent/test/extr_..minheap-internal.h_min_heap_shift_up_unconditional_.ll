; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_..minheap-internal.h_min_heap_shift_up_unconditional_.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_..minheap-internal.h_min_heap_shift_up_unconditional_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.event** }
%struct.event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @min_heap_shift_up_unconditional_(%struct.TYPE_5__* %0, i64 %1, %struct.event* %2) #0 {
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

11:                                               ; preds = %43, %3
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.event**, %struct.event*** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.event*, %struct.event** %15, i64 %16
  %18 = load %struct.event*, %struct.event** %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.event**, %struct.event*** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.event*, %struct.event** %21, i64 %22
  store %struct.event* %18, %struct.event** %23, align 8
  %24 = getelementptr inbounds %struct.event, %struct.event* %18, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 %12, i64* %25, align 8
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %27, 1
  %29 = udiv i64 %28, 2
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %11
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.event**, %struct.event*** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.event*, %struct.event** %36, i64 %37
  %39 = load %struct.event*, %struct.event** %38, align 8
  %40 = load %struct.event*, %struct.event** %6, align 8
  %41 = call i64 @min_heap_elem_greater(%struct.event* %39, %struct.event* %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %33, %30
  %44 = phi i1 [ false, %30 ], [ %42, %33 ]
  br i1 %44, label %11, label %45

45:                                               ; preds = %43
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
