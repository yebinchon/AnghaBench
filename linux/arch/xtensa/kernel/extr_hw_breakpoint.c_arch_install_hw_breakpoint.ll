; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_arch_install_hw_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_arch_install_hw_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.TYPE_2__ = type { i64 }

@XTENSA_BREAKPOINT_EXECUTE = common dso_local global i64 0, align 8
@bp_on_reg = common dso_local global i32 0, align 4
@XCHAL_NUM_IBREAK = common dso_local global i32 0, align 4
@wp_on_reg = common dso_local global i32 0, align 4
@XCHAL_NUM_DBREAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_install_hw_breakpoint(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = call %struct.TYPE_2__* @counter_arch_bp(%struct.perf_event* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @XTENSA_BREAKPOINT_EXECUTE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load i32, i32* @bp_on_reg, align 4
  %13 = call i32 @this_cpu_ptr(i32 %12)
  %14 = load i32, i32* @XCHAL_NUM_IBREAK, align 4
  %15 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %16 = call i32 @alloc_slot(i32 %13, i32 %14, %struct.perf_event* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %40

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = call i32 @set_ibreak_regs(i32 %22, %struct.perf_event* %23)
  br label %39

25:                                               ; preds = %1
  %26 = load i32, i32* @wp_on_reg, align 4
  %27 = call i32 @this_cpu_ptr(i32 %26)
  %28 = load i32, i32* @XCHAL_NUM_DBREAK, align 4
  %29 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %30 = call i32 @alloc_slot(i32 %27, i32 %28, %struct.perf_event* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %40

35:                                               ; preds = %25
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %38 = call i32 @set_dbreak_regs(i32 %36, %struct.perf_event* %37)
  br label %39

39:                                               ; preds = %35, %21
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %33, %19
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_2__* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @alloc_slot(i32, i32, %struct.perf_event*) #1

declare dso_local i32 @this_cpu_ptr(i32) #1

declare dso_local i32 @set_ibreak_regs(i32, %struct.perf_event*) #1

declare dso_local i32 @set_dbreak_regs(i32, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
