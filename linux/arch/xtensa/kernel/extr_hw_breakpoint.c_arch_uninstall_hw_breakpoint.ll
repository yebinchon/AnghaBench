; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_arch_uninstall_hw_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_arch_uninstall_hw_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.arch_hw_breakpoint = type { i64 }

@XTENSA_BREAKPOINT_EXECUTE = common dso_local global i64 0, align 8
@bp_on_reg = common dso_local global i32 0, align 4
@XCHAL_NUM_IBREAK = common dso_local global i32 0, align 4
@SREG_IBREAKENABLE = common dso_local global i32 0, align 4
@wp_on_reg = common dso_local global i32 0, align 4
@XCHAL_NUM_DBREAK = common dso_local global i32 0, align 4
@SREG_DBREAKC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_uninstall_hw_breakpoint(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.arch_hw_breakpoint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %7 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %6)
  store %struct.arch_hw_breakpoint* %7, %struct.arch_hw_breakpoint** %3, align 8
  %8 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %9 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XTENSA_BREAKPOINT_EXECUTE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load i32, i32* @bp_on_reg, align 4
  %15 = call i32 @this_cpu_ptr(i32 %14)
  %16 = load i32, i32* @XCHAL_NUM_IBREAK, align 4
  %17 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %18 = call i32 @free_slot(i32 %15, i32 %16, %struct.perf_event* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load i32, i32* @SREG_IBREAKENABLE, align 4
  %23 = call i64 @xtensa_get_sr(i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = and i64 %24, %28
  %30 = load i32, i32* @SREG_IBREAKENABLE, align 4
  %31 = call i32 @xtensa_set_sr(i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %21, %13
  br label %48

33:                                               ; preds = %1
  %34 = load i32, i32* @wp_on_reg, align 4
  %35 = call i32 @this_cpu_ptr(i32 %34)
  %36 = load i32, i32* @XCHAL_NUM_DBREAK, align 4
  %37 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %38 = call i32 @free_slot(i32 %35, i32 %36, %struct.perf_event* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i64, i64* @SREG_DBREAKC, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = call i32 @xtensa_wsr(i32 0, i64 %45)
  br label %47

47:                                               ; preds = %41, %33
  br label %48

48:                                               ; preds = %47, %32
  ret void
}

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @free_slot(i32, i32, %struct.perf_event*) #1

declare dso_local i32 @this_cpu_ptr(i32) #1

declare dso_local i64 @xtensa_get_sr(i32) #1

declare dso_local i32 @xtensa_set_sr(i64, i32) #1

declare dso_local i32 @xtensa_wsr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
