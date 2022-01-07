; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_core.c_amd_pmu_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_core.c_amd_pmu_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.cpu_hw_events = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@X86_PMC_IDX_MAX = common dso_local global i32 0, align 4
@perf_nmi_tstamp = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@perf_nmi_window = common dso_local global i64 0, align 8
@NMI_DONE = common dso_local global i32 0, align 4
@NMI_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @amd_pmu_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_pmu_handle_irq(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %7 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %7, %struct.cpu_hw_events** %4, align 8
  %8 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %9 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @X86_PMC_IDX_MAX, align 4
  %12 = call i32 @__bitmap_weight(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %14 = call i32 @x86_pmu_handle_irq(%struct.pt_regs* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @perf_nmi_tstamp, align 4
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* @perf_nmi_window, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @this_cpu_write(i32 %18, i64 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %34

24:                                               ; preds = %1
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i32, i32* @perf_nmi_tstamp, align 4
  %27 = call i32 @this_cpu_read(i32 %26)
  %28 = call i64 @time_after(i64 %25, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @NMI_DONE, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @NMI_HANDLED, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30, %17
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @__bitmap_weight(i32, i32) #1

declare dso_local i32 @x86_pmu_handle_irq(%struct.pt_regs*) #1

declare dso_local i32 @this_cpu_write(i32, i64) #1

declare dso_local i64 @time_after(i64, i32) #1

declare dso_local i32 @this_cpu_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
