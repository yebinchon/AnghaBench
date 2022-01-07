; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_long_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_long_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_scheme_object = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_scheme_long_value(%struct.tl_scheme_object* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_scheme_object*, align 8
  %5 = alloca i64*, align 8
  store %struct.tl_scheme_object* %0, %struct.tl_scheme_object** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %7 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %21 [
    i32 129, label %9
    i32 128, label %15
  ]

9:                                                ; preds = %2
  %10 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %11 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %5, align 8
  store i64 %13, i64* %14, align 8
  store i32 0, i32* %3, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %17 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64*, i64** %5, align 8
  store i64 %19, i64* %20, align 8
  store i32 0, i32* %3, align 4
  br label %23

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %15, %9
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
