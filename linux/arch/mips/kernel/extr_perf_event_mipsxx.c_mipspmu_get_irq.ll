; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipspmu_get_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipspmu_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@mipspmu = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@mipsxx_pmu_handle_irq = common dso_local global i32 0, align 4
@IRQF_PERCPU = common dso_local global i32 0, align 4
@IRQF_NOBALANCING = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mips_perf_pmu\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Unable to request IRQ%d for MIPS performance counters!\0A\00", align 1
@cp0_perfcount_irq = common dso_local global i64 0, align 8
@perf_irq = common dso_local global i32 0, align 4
@save_perf_irq = common dso_local global i32 0, align 4
@mipsxx_pmu_handle_shared_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"The platform hasn't properly defined its interrupt controller\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mipspmu_get_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipspmu_get_irq() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mipspmu, i32 0, i32 0), align 8
  %3 = icmp sge i64 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mipspmu, i32 0, i32 0), align 8
  %6 = load i32, i32* @mipsxx_pmu_handle_irq, align 4
  %7 = load i32, i32* @IRQF_PERCPU, align 4
  %8 = load i32, i32* @IRQF_NOBALANCING, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @IRQF_NO_THREAD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IRQF_SHARED, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @request_irq(i64 %5, i32 %6, i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* @mipspmu)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @mipspmu, i32 0, i32 0), align 8
  %21 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %19, %4
  br label %34

23:                                               ; preds = %0
  %24 = load i64, i64* @cp0_perfcount_irq, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @perf_irq, align 4
  store i32 %27, i32* @save_perf_irq, align 4
  %28 = load i32, i32* @mipsxx_pmu_handle_shared_irq, align 4
  store i32 %28, i32* @perf_irq, align 4
  store i32 0, i32* %1, align 4
  br label %33

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %29, %26
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
