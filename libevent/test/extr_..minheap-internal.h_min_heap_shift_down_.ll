; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_..minheap-internal.h_min_heap_shift_down_.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_..minheap-internal.h_min_heap_shift_down_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.event** }
%struct.event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @min_heap_shift_down_(%struct.TYPE_5__* %0, i64 %1, %struct.event* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.event*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.event* %2, %struct.event** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = add i64 %8, 1
  %10 = mul i64 2, %9
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %55, %3
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ule i64 %12, %15
  br i1 %16, label %17, label %74

17:                                               ; preds = %11
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.event**, %struct.event*** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.event*, %struct.event** %26, i64 %27
  %29 = load %struct.event*, %struct.event** %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.event**, %struct.event*** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds %struct.event*, %struct.event** %32, i64 %34
  %36 = load %struct.event*, %struct.event** %35, align 8
  %37 = call i64 @min_heap_elem_greater(%struct.event* %29, %struct.event* %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %23, %17
  %40 = phi i1 [ true, %17 ], [ %38, %23 ]
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %7, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load %struct.event*, %struct.event** %6, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.event**, %struct.event*** %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.event*, %struct.event** %48, i64 %49
  %51 = load %struct.event*, %struct.event** %50, align 8
  %52 = call i64 @min_heap_elem_greater(%struct.event* %45, %struct.event* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %39
  br label %74

55:                                               ; preds = %39
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.event**, %struct.event*** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.event*, %struct.event** %59, i64 %60
  %62 = load %struct.event*, %struct.event** %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load %struct.event**, %struct.event*** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.event*, %struct.event** %65, i64 %66
  store %struct.event* %62, %struct.event** %67, align 8
  %68 = getelementptr inbounds %struct.event, %struct.event* %62, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64 %56, i64* %69, align 8
  %70 = load i64, i64* %7, align 8
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = add i64 %71, 1
  %73 = mul i64 2, %72
  store i64 %73, i64* %7, align 8
  br label %11

74:                                               ; preds = %54, %11
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.event*, %struct.event** %6, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load %struct.event**, %struct.event*** %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds %struct.event*, %struct.event** %79, i64 %80
  store %struct.event* %76, %struct.event** %81, align 8
  %82 = getelementptr inbounds %struct.event, %struct.event* %76, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 %75, i64* %83, align 8
  ret void
}

declare dso_local i64 @min_heap_elem_greater(%struct.event*, %struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
