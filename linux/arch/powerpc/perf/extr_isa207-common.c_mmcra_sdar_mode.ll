; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_mmcra_sdar_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_mmcra_sdar_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@MMCRA_SAMPLE_ENABLE = common dso_local global i64 0, align 8
@MMCRA_SDAR_MODE_NO_UPDATES = common dso_local global i64 0, align 8
@MMCRA_SDAR_MODE_SHIFT = common dso_local global i64 0, align 8
@MMCRA_SDAR_MODE_DCACHE = common dso_local global i64 0, align 8
@MMCRA_SDAR_MODE_TLB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*)* @mmcra_sdar_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmcra_sdar_mode(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %5 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %6 = call i64 @cpu_has_feature(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @is_event_marked(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12, %8
  %19 = load i64, i64* @MMCRA_SDAR_MODE_NO_UPDATES, align 8
  %20 = load i64*, i64** %4, align 8
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %21, %19
  store i64 %22, i64* %20, align 8
  br label %41

23:                                               ; preds = %12
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @p9_SDAR_MODE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @p9_SDAR_MODE(i32 %28)
  %30 = load i64, i64* @MMCRA_SDAR_MODE_SHIFT, align 8
  %31 = shl i64 %29, %30
  %32 = load i64*, i64** %4, align 8
  %33 = load i64, i64* %32, align 8
  %34 = or i64 %33, %31
  store i64 %34, i64* %32, align 8
  br label %40

35:                                               ; preds = %23
  %36 = load i64, i64* @MMCRA_SDAR_MODE_DCACHE, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = load i64, i64* %37, align 8
  %39 = or i64 %38, %36
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %35, %27
  br label %41

41:                                               ; preds = %40, %18
  br label %47

42:                                               ; preds = %2
  %43 = load i64, i64* @MMCRA_SDAR_MODE_TLB, align 8
  %44 = load i64*, i64** %4, align 8
  %45 = load i64, i64* %44, align 8
  %46 = or i64 %45, %43
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %42, %41
  ret void
}

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @is_event_marked(i32) #1

declare dso_local i64 @p9_SDAR_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
