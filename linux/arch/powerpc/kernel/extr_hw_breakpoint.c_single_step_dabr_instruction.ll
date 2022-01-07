; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_hw_breakpoint.c_single_step_dabr_instruction.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_hw_breakpoint.c_single_step_dabr_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.perf_event* }
%struct.perf_event = type { i32 }
%struct.die_args = type { %struct.pt_regs* }
%struct.pt_regs = type { i32 }
%struct.arch_hw_breakpoint = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@HW_BRK_TYPE_EXTRANEOUS_IRQ = common dso_local global i32 0, align 4
@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.die_args*)* @single_step_dabr_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @single_step_dabr_instruction(%struct.die_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.die_args*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.arch_hw_breakpoint*, align 8
  store %struct.die_args* %0, %struct.die_args** %3, align 8
  %7 = load %struct.die_args*, %struct.die_args** %3, align 8
  %8 = getelementptr inbounds %struct.die_args, %struct.die_args* %7, i32 0, i32 0
  %9 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  store %struct.pt_regs* %9, %struct.pt_regs** %4, align 8
  store %struct.perf_event* null, %struct.perf_event** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  store %struct.perf_event* %13, %struct.perf_event** %5, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %15 = icmp ne %struct.perf_event* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %17, i32* %2, align 4
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %20 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %19)
  store %struct.arch_hw_breakpoint* %20, %struct.arch_hw_breakpoint** %6, align 8
  %21 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %22 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HW_BRK_TYPE_EXTRANEOUS_IRQ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %29 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %30 = call i32 @perf_bp_event(%struct.perf_event* %28, %struct.pt_regs* %29)
  br label %31

31:                                               ; preds = %27, %18
  %32 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %33 = call i32 @__set_breakpoint(%struct.arch_hw_breakpoint* %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store %struct.perf_event* null, %struct.perf_event** %36, align 8
  %37 = load i32, i32* @TIF_SINGLESTEP, align 4
  %38 = call i64 @test_thread_flag(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %40, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @perf_bp_event(%struct.perf_event*, %struct.pt_regs*) #1

declare dso_local i32 @__set_breakpoint(%struct.arch_hw_breakpoint*) #1

declare dso_local i64 @test_thread_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
