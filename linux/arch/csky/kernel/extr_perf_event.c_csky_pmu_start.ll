; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_perf_event.c_csky_pmu_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_perf_event.c_csky_pmu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }

@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@HPINTENR = common dso_local global i32 0, align 4
@HPCNTENR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @csky_pmu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csky_pmu_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %6, align 8
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %57

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PERF_EF_RELOAD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %26 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON_ONCE(i32 %32)
  br label %34

34:                                               ; preds = %24, %19
  %35 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %36 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %38 = call i32 @csky_pmu_event_set_period(%struct.perf_event* %37)
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @local_irq_save(i64 %39)
  %41 = load i32, i32* @HPINTENR, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = load i32, i32* @HPINTENR, align 4
  %45 = call i32 @cprcr(i32 %44)
  %46 = or i32 %43, %45
  %47 = call i32 @cpwcr(i32 %41, i32 %46)
  %48 = load i32, i32* @HPCNTENR, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = load i32, i32* @HPCNTENR, align 4
  %52 = call i32 @cprcr(i32 %51)
  %53 = or i32 %50, %52
  %54 = call i32 @cpwcr(i32 %48, i32 %53)
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @local_irq_restore(i64 %55)
  br label %57

57:                                               ; preds = %34, %18
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @csky_pmu_event_set_period(%struct.perf_event*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @cpwcr(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cprcr(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
