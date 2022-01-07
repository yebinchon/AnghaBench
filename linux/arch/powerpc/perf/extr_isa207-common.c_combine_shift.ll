; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_combine_shift.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_combine_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @combine_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @combine_shift(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %5 = call i64 @cpu_has_feature(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @p9_MMCR1_COMBINE_SHIFT(i64 %8)
  store i64 %9, i64* %2, align 8
  br label %13

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @MMCR1_COMBINE_SHIFT(i64 %11)
  store i64 %12, i64* %2, align 8
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i64, i64* %2, align 8
  ret i64 %14
}

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @p9_MMCR1_COMBINE_SHIFT(i64) #1

declare dso_local i64 @MMCR1_COMBINE_SHIFT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
