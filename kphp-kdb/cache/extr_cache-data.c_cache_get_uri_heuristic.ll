; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_get_uri_heuristic.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_get_uri_heuristic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32* }
%struct.amortization_counter = type { double }

@acounter_off = common dso_local global i64 0, align 8
@amortization_counter_types = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @cache_get_uri_heuristic(%struct.cache_uri* %0) #0 {
  %2 = alloca %struct.cache_uri*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.amortization_counter*, align 8
  %5 = alloca double, align 8
  store %struct.cache_uri* %0, %struct.cache_uri** %2, align 8
  %6 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %7 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @acounter_off, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = bitcast i32* %10 to %struct.amortization_counter*
  store %struct.amortization_counter* %11, %struct.amortization_counter** %4, align 8
  %12 = load %struct.amortization_counter*, %struct.amortization_counter** %4, align 8
  %13 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  store double %14, double* %5, align 8
  %15 = load %struct.amortization_counter*, %struct.amortization_counter** %4, align 8
  %16 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %15, i32 1
  store %struct.amortization_counter* %16, %struct.amortization_counter** %4, align 8
  store i32 1, i32* %3, align 4
  br label %17

17:                                               ; preds = %34, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @amortization_counter_types, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load double, double* %5, align 8
  %23 = load %struct.amortization_counter*, %struct.amortization_counter** %4, align 8
  %24 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = fcmp olt double %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.amortization_counter*, %struct.amortization_counter** %4, align 8
  %29 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  store double %30, double* %5, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.amortization_counter*, %struct.amortization_counter** %4, align 8
  %33 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %32, i32 1
  store %struct.amortization_counter* %33, %struct.amortization_counter** %4, align 8
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load double, double* %5, align 8
  ret double %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
