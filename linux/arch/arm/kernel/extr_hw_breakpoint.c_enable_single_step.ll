; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_enable_single_step.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_enable_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.arch_hw_breakpoint = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ARM_BREAKPOINT_LEN_4 = common dso_local global i32 0, align 4
@ARM_BREAKPOINT_EXECUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @enable_single_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_single_step(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arch_hw_breakpoint*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %6)
  store %struct.arch_hw_breakpoint* %7, %struct.arch_hw_breakpoint** %5, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = call i32 @arch_uninstall_hw_breakpoint(%struct.perf_event* %8)
  %10 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %5, align 8
  %11 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* @ARM_BREAKPOINT_LEN_4, align 4
  %14 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %5, align 8
  %15 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @ARM_BREAKPOINT_EXECUTE, align 4
  %18 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %5, align 8
  %19 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 4
  %21 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %5, align 8
  %22 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %5, align 8
  %26 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %5, align 8
  %29 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %5, align 8
  %33 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %35 = call i32 @arch_install_hw_breakpoint(%struct.perf_event* %34)
  ret void
}

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @arch_uninstall_hw_breakpoint(%struct.perf_event*) #1

declare dso_local i32 @arch_install_hw_breakpoint(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
