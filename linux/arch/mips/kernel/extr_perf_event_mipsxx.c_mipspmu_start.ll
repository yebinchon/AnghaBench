; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipspmu_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipspmu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }

@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @mipspmu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipspmu_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  store %struct.hw_perf_event* %7, %struct.hw_perf_event** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @PERF_EF_RELOAD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  br label %22

22:                                               ; preds = %12, %2
  %23 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %24 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %27 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %28 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mipspmu_event_set_period(%struct.perf_event* %25, %struct.hw_perf_event* %26, i32 %29)
  %31 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %32 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %33 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mipsxx_pmu_enable_event(%struct.hw_perf_event* %31, i32 %34)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mipspmu_event_set_period(%struct.perf_event*, %struct.hw_perf_event*, i32) #1

declare dso_local i32 @mipsxx_pmu_enable_event(%struct.hw_perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
