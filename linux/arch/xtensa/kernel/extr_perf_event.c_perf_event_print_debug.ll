; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_perf_event.c_perf_event_print_debug.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_perf_event.c_perf_event_print_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"CPU#%d: PMG: 0x%08lx\0A\00", align 1
@XTENSA_PMU_PMG = common dso_local global i32 0, align 4
@XCHAL_NUM_PERF_COUNTERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"PM%d: 0x%08lx, PMCTRL%d: 0x%08lx, PMSTAT%d: 0x%08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_event_print_debug() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* %1, align 8
  %4 = call i32 @local_irq_save(i64 %3)
  %5 = call i32 (...) @smp_processor_id()
  %6 = load i32, i32* @XTENSA_PMU_PMG, align 4
  %7 = call i32 @get_er(i32 %6)
  %8 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %7)
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %27, %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @XCHAL_NUM_PERF_COUNTERS, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @XTENSA_PMU_PM(i32 %15)
  %17 = call i32 @get_er(i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @XTENSA_PMU_PMCTRL(i32 %19)
  %21 = call i32 @get_er(i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @XTENSA_PMU_PMSTAT(i32 %23)
  %25 = call i32 @get_er(i32 %24)
  %26 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %17, i32 %18, i32 %21, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %2, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @local_irq_restore(i64 %31)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @get_er(i32) #1

declare dso_local i32 @XTENSA_PMU_PM(i32) #1

declare dso_local i32 @XTENSA_PMU_PMCTRL(i32) #1

declare dso_local i32 @XTENSA_PMU_PMSTAT(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
