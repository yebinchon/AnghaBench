; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_debug_check_acounters_in_increasing_order.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_debug_check_acounters_in_increasing_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32* }
%struct.amortization_counter = type { i64 }

@acounter_off = common dso_local global i64 0, align 8
@amortization_counter_types = common dso_local global i32 0, align 4
@TAT = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_check_acounters_in_increasing_order(%struct.cache_uri* %0) #0 {
  %2 = alloca %struct.cache_uri*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.amortization_counter*, align 8
  %5 = alloca %struct.amortization_counter*, align 8
  store %struct.cache_uri* %0, %struct.cache_uri** %2, align 8
  store %struct.amortization_counter* null, %struct.amortization_counter** %4, align 8
  %6 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  %7 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @acounter_off, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = bitcast i32* %10 to %struct.amortization_counter*
  store %struct.amortization_counter* %11, %struct.amortization_counter** %5, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %39, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @amortization_counter_types, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = load i32*, i32** @TAT, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load %struct.amortization_counter*, %struct.amortization_counter** %5, align 8
  %22 = call i32 @amortization_counter_update(i32* %20, %struct.amortization_counter* %21)
  %23 = load %struct.amortization_counter*, %struct.amortization_counter** %4, align 8
  %24 = icmp ne %struct.amortization_counter* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load %struct.amortization_counter*, %struct.amortization_counter** %4, align 8
  %27 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.amortization_counter*, %struct.amortization_counter** %5, align 8
  %30 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  br label %35

35:                                               ; preds = %25, %16
  %36 = load %struct.amortization_counter*, %struct.amortization_counter** %5, align 8
  store %struct.amortization_counter* %36, %struct.amortization_counter** %4, align 8
  %37 = load %struct.amortization_counter*, %struct.amortization_counter** %5, align 8
  %38 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %37, i32 1
  store %struct.amortization_counter* %38, %struct.amortization_counter** %5, align 8
  br label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %12

42:                                               ; preds = %12
  ret void
}

declare dso_local i32 @amortization_counter_update(i32*, %struct.amortization_counter*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
