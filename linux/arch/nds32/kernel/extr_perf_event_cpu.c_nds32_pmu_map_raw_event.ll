; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_map_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_map_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PFM_OFFSET_MAGIC_0 = common dso_local global i32 0, align 4
@SPAV3_0_SEL_LAST = common dso_local global i32 0, align 4
@SPAV3_0_SEL_BASE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PFM_OFFSET_MAGIC_1 = common dso_local global i32 0, align 4
@SPAV3_1_SEL_LAST = common dso_local global i32 0, align 4
@SPAV3_1_SEL_BASE = common dso_local global i32 0, align 4
@PFM_OFFSET_MAGIC_2 = common dso_local global i32 0, align 4
@SPAV3_2_SEL_LAST = common dso_local global i32 0, align 4
@SPAV3_2_SEL_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @nds32_pmu_map_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nds32_pmu_map_raw_event(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = ashr i32 %11, 8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %59 [
    i32 0, label %14
    i32 1, label %29
    i32 2, label %44
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @PFM_OFFSET_MAGIC_0, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SPAV3_0_SEL_LAST, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SPAV3_0_SEL_BASE, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %14
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %64

28:                                               ; preds = %21
  br label %62

29:                                               ; preds = %2
  %30 = load i32, i32* @PFM_OFFSET_MAGIC_1, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SPAV3_1_SEL_LAST, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SPAV3_1_SEL_BASE, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %29
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %64

43:                                               ; preds = %36
  br label %62

44:                                               ; preds = %2
  %45 = load i32, i32* @PFM_OFFSET_MAGIC_2, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @SPAV3_2_SEL_LAST, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SPAV3_2_SEL_BASE, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %44
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %64

58:                                               ; preds = %51
  br label %62

59:                                               ; preds = %2
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %58, %43, %28
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %59, %55, %40, %25
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
