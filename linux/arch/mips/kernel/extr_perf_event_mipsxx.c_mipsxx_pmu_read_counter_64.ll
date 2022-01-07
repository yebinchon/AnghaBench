; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipsxx_pmu_read_counter_64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipsxx_pmu_read_counter_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"Invalid performance counter number (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mipsxx_pmu_read_counter_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipsxx_pmu_read_counter_64(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @mipsxx_pmu_swizzle_perf_idx(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %15 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
  ]

7:                                                ; preds = %1
  %8 = call i32 (...) @read_c0_perfcntr0_64()
  store i32 %8, i32* %2, align 4
  br label %18

9:                                                ; preds = %1
  %10 = call i32 (...) @read_c0_perfcntr1_64()
  store i32 %10, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  %12 = call i32 (...) @read_c0_perfcntr2_64()
  store i32 %12, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = call i32 (...) @read_c0_perfcntr3_64()
  store i32 %14, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %13, %11, %9, %7
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @mipsxx_pmu_swizzle_perf_idx(i32) #1

declare dso_local i32 @read_c0_perfcntr0_64(...) #1

declare dso_local i32 @read_c0_perfcntr1_64(...) #1

declare dso_local i32 @read_c0_perfcntr2_64(...) #1

declare dso_local i32 @read_c0_perfcntr3_64(...) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
