; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipsxx_pmu_handle_shared_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipsxx_pmu_handle_shared_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32)*, i32 }
%struct.cpu_hw_events = type { i32 }
%struct.perf_sample_data = type { i32 }
%struct.pt_regs = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@mipspmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@cpu_has_perf_cntr_intr_bit = common dso_local global i64 0, align 8
@CAUSEF_PCI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@pmuint_rwlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mipsxx_pmu_handle_shared_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipsxx_pmu_handle_shared_irq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cpu_hw_events*, align 8
  %3 = alloca %struct.perf_sample_data, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_regs*, align 8
  %9 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %9, %struct.cpu_hw_events** %2, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mipspmu, i32 0, i32 0), align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i64, i64* @cpu_has_perf_cntr_intr_bit, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %0
  %15 = call i32 (...) @read_c0_cause()
  %16 = load i32, i32* @CAUSEF_PCI, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %1, align 4
  br label %65

21:                                               ; preds = %14, %0
  %22 = call i32 (...) @pause_local_counters()
  %23 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %23, %struct.pt_regs** %8, align 8
  %24 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %3, i32 0, i32 0)
  %25 = load i32, i32* %4, align 4
  %26 = sub i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %53, %21
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %33 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @test_bit(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %53

38:                                               ; preds = %30
  %39 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mipspmu, i32 0, i32 1), align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 %39(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mipspmu, i32 0, i32 2), align 8
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %53

47:                                               ; preds = %38
  %48 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %51 = call i32 @handle_associated_event(%struct.cpu_hw_events* %48, i32 %49, %struct.perf_sample_data* %3, %struct.pt_regs* %50)
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %47, %46, %37
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  br label %27

56:                                               ; preds = %27
  %57 = call i32 (...) @resume_local_counters()
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 (...) @irq_work_run()
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %1, align 4
  br label %65

65:                                               ; preds = %63, %19
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @read_c0_cause(...) #1

declare dso_local i32 @pause_local_counters(...) #1

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @handle_associated_event(%struct.cpu_hw_events*, i32, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @resume_local_counters(...) #1

declare dso_local i32 @irq_work_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
