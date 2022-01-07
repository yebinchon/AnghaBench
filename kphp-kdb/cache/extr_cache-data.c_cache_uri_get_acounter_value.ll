; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_get_acounter_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_uri_get_acounter_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32* }
%struct.amortization_counter = type { float }

@amortization_counter_types = common dso_local global i32 0, align 4
@acounter_off = common dso_local global i64 0, align 8
@TAT = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @cache_uri_get_acounter_value(%struct.cache_uri* %0, i32 %1) #0 {
  %3 = alloca %struct.cache_uri*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amortization_counter*, align 8
  store %struct.cache_uri* %0, %struct.cache_uri** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @amortization_counter_types, align 4
  %11 = icmp slt i32 %9, %10
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ false, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %17 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @acounter_off, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = bitcast i32* %20 to %struct.amortization_counter*
  store %struct.amortization_counter* %21, %struct.amortization_counter** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.amortization_counter*, %struct.amortization_counter** %5, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %23, i64 %24
  store %struct.amortization_counter* %25, %struct.amortization_counter** %5, align 8
  %26 = load i32*, i32** @TAT, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load %struct.amortization_counter*, %struct.amortization_counter** %5, align 8
  %31 = call i32 @amortization_counter_update(i32* %29, %struct.amortization_counter* %30)
  %32 = load %struct.amortization_counter*, %struct.amortization_counter** %5, align 8
  %33 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %32, i32 0, i32 0
  %34 = load float, float* %33, align 4
  ret float %34
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @amortization_counter_update(i32*, %struct.amortization_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
