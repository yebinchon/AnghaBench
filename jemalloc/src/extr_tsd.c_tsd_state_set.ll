; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_tsd.c_tsd_state_set.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_tsd.c_tsd_state_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@tsd_state_nominal_recompute = common dso_local global i64 0, align 8
@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@tsd_state_nominal_max = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsd_state_set(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @tsd_state_nominal_recompute, align 8
  %8 = icmp ne i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* @ATOMIC_RELAXED, align 4
  %14 = call i64 @tsd_atomic_load(i32* %12, i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @tsd_state_nominal_max, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = call i32 @tsd_in_nominal_list(%struct.TYPE_7__* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* @ATOMIC_RELAXED, align 4
  %29 = call i32 @tsd_atomic_store(i32* %26, i64 %27, i32 %28)
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @tsd_state_nominal_max, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = call i32 @tsd_add_nominal(%struct.TYPE_7__* %34)
  br label %36

36:                                               ; preds = %33, %18
  br label %56

37:                                               ; preds = %2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = call i32 @tsd_in_nominal_list(%struct.TYPE_7__* %38)
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @tsd_state_nominal_max, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = call i32 @tsd_remove_nominal(%struct.TYPE_7__* %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %4, align 8
  %50 = load i32, i32* @ATOMIC_RELAXED, align 4
  %51 = call i32 @tsd_atomic_store(i32* %48, i64 %49, i32 %50)
  br label %55

52:                                               ; preds = %37
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = call i32 @tsd_slow_update(%struct.TYPE_7__* %53)
  br label %55

55:                                               ; preds = %52, %44
  br label %56

56:                                               ; preds = %55, %36
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tsd_atomic_load(i32*, i32) #1

declare dso_local i32 @tsd_in_nominal_list(%struct.TYPE_7__*) #1

declare dso_local i32 @tsd_atomic_store(i32*, i64, i32) #1

declare dso_local i32 @tsd_add_nominal(%struct.TYPE_7__*) #1

declare dso_local i32 @tsd_remove_nominal(%struct.TYPE_7__*) #1

declare dso_local i32 @tsd_slow_update(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
