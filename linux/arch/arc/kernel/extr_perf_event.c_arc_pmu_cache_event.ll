; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_perf_event.c_arc_pmu_cache_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_perf_event.c_arc_pmu_cache_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_COUNT_HW_CACHE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_MAX = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MAX = common dso_local global i32 0, align 4
@arc_pmu_cache_map = common dso_local global i32*** null, align 8
@CACHE_OP_UNSUPPORTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"init cache event: type/op/result %d/%d/%d with h/w %d '%s'\0A\00", align 1
@arc_pmu_ev_hw_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arc_pmu_cache_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_pmu_cache_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 0
  %10 = and i32 %9, 255
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 8
  %13 = and i32 %12, 255
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 16
  %16 = and i32 %15, 255
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PERF_COUNT_HW_CACHE_MAX, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %69

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_MAX, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %69

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %69

37:                                               ; preds = %30
  %38 = load i32***, i32**** @arc_pmu_cache_map, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32**, i32*** %38, i64 %40
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @CACHE_OP_UNSUPPORTED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %69

57:                                               ; preds = %37
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** @arc_pmu_ev_hw_map, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60, i32 %61, i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %57, %54, %34, %27, %20
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
