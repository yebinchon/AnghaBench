; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_tsd.c_tsd_fetch_slow.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_tsd.c_tsd_fetch_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tsd_state_nominal_slow = common dso_local global i64 0, align 8
@tsd_state_nominal_recompute = common dso_local global i64 0, align 8
@tsd_state_uninitialized = common dso_local global i64 0, align 8
@tsd_booted = common dso_local global i64 0, align 8
@tsd_state_nominal = common dso_local global i64 0, align 8
@tsd_state_minimal_initialized = common dso_local global i64 0, align 8
@tsd_state_purgatory = common dso_local global i64 0, align 8
@tsd_state_reincarnated = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tsd_fetch_slow(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @tsd_fast(i32* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @tsd_state_get(i32* %11)
  %13 = load i64, i64* @tsd_state_nominal_slow, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %109

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @tsd_state_get(i32* %17)
  %19 = load i64, i64* @tsd_state_nominal_recompute, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @tsd_slow_update(i32* %22)
  br label %108

24:                                               ; preds = %16
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @tsd_state_get(i32* %25)
  %27 = load i64, i64* @tsd_state_uninitialized, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* @tsd_booted, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i32*, i32** %3, align 8
  %37 = load i64, i64* @tsd_state_nominal, align 8
  %38 = call i32 @tsd_state_set(i32* %36, i64 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @tsd_slow_update(i32* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @tsd_set(i32* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @tsd_data_init(i32* %43)
  br label %45

45:                                               ; preds = %35, %32
  br label %54

46:                                               ; preds = %29
  %47 = load i32*, i32** %3, align 8
  %48 = load i64, i64* @tsd_state_minimal_initialized, align 8
  %49 = call i32 @tsd_state_set(i32* %47, i64 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @tsd_set(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @tsd_data_init_nocleanup(i32* %52)
  br label %54

54:                                               ; preds = %46, %45
  br label %107

55:                                               ; preds = %24
  %56 = load i32*, i32** %3, align 8
  %57 = call i64 @tsd_state_get(i32* %56)
  %58 = load i64, i64* @tsd_state_minimal_initialized, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %60
  %64 = load i32*, i32** %3, align 8
  %65 = load i64, i64* @tsd_state_nominal, align 8
  %66 = call i32 @tsd_state_set(i32* %64, i64 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call i32* @tsd_reentrancy_levelp_get(i32* %67)
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %69, 1
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32* @tsd_reentrancy_levelp_get(i32* %73)
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @tsd_slow_update(i32* %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @tsd_data_init(i32* %79)
  br label %84

81:                                               ; preds = %60
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @assert_tsd_data_cleanup_done(i32* %82)
  br label %84

84:                                               ; preds = %81, %63
  br label %106

85:                                               ; preds = %55
  %86 = load i32*, i32** %3, align 8
  %87 = call i64 @tsd_state_get(i32* %86)
  %88 = load i64, i64* @tsd_state_purgatory, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i32*, i32** %3, align 8
  %92 = load i64, i64* @tsd_state_reincarnated, align 8
  %93 = call i32 @tsd_state_set(i32* %91, i64 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @tsd_set(i32* %94)
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @tsd_data_init_nocleanup(i32* %96)
  br label %105

98:                                               ; preds = %85
  %99 = load i32*, i32** %3, align 8
  %100 = call i64 @tsd_state_get(i32* %99)
  %101 = load i64, i64* @tsd_state_reincarnated, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  br label %105

105:                                              ; preds = %98, %90
  br label %106

106:                                              ; preds = %105, %84
  br label %107

107:                                              ; preds = %106, %54
  br label %108

108:                                              ; preds = %107, %21
  br label %109

109:                                              ; preds = %108, %15
  %110 = load i32*, i32** %3, align 8
  ret i32* %110
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tsd_fast(i32*) #1

declare dso_local i64 @tsd_state_get(i32*) #1

declare dso_local i32 @tsd_slow_update(i32*) #1

declare dso_local i32 @tsd_state_set(i32*, i64) #1

declare dso_local i32 @tsd_set(i32*) #1

declare dso_local i32 @tsd_data_init(i32*) #1

declare dso_local i32 @tsd_data_init_nocleanup(i32*) #1

declare dso_local i32* @tsd_reentrancy_levelp_get(i32*) #1

declare dso_local i32 @assert_tsd_data_cleanup_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
