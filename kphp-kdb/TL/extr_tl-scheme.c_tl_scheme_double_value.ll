; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_double_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_double_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_scheme_object = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_scheme_double_value(%struct.tl_scheme_object* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_scheme_object*, align 8
  %5 = alloca double*, align 8
  store %struct.tl_scheme_object* %0, %struct.tl_scheme_object** %4, align 8
  store double* %1, double** %5, align 8
  %6 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %7 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %27 [
    i32 129, label %9
    i32 128, label %15
    i32 130, label %21
  ]

9:                                                ; preds = %2
  %10 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %11 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = load double*, double** %5, align 8
  store double %13, double* %14, align 8
  store i32 0, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %17 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load double, double* %18, align 8
  %20 = load double*, double** %5, align 8
  store double %19, double* %20, align 8
  store i32 0, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %23 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load double, double* %24, align 8
  %26 = load double*, double** %5, align 8
  store double %25, double* %26, align 8
  store i32 0, i32* %3, align 4
  br label %29

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %21, %15, %9
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
