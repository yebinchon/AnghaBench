; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_map_cache_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_map_cache_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_COUNT_HW_CACHE_MAX = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_MAX = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CACHE_OP_UNSUPPORTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @nds32_pmu_map_cache_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nds32_pmu_map_cache_event(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @PERF_COUNT_HW_CACHE_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 0
  %18 = and i32 %17, 255
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PERF_COUNT_HW_CACHE_MAX, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %68

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_MAX, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %68

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 255
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %68

45:                                               ; preds = %35
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = mul nuw i64 %13, %15
  %50 = mul nsw i64 %48, %49
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = mul nsw i64 %53, %15
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @CACHE_OP_UNSUPPORTED, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %45
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %45
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %63, %42, %32, %22
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
