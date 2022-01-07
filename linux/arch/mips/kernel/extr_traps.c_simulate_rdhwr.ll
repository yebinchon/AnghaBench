; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c_simulate_rdhwr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c_simulate_rdhwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32* }
%struct.thread_info = type { i32 }

@current = common dso_local global i32 0, align 4
@PERF_COUNT_SW_EMULATION_FAULTS = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, i32)* @simulate_rdhwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simulate_rdhwr(%struct.pt_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread_info*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @current, align 4
  %10 = call %struct.thread_info* @task_thread_info(i32 %9)
  store %struct.thread_info* %10, %struct.thread_info** %8, align 8
  %11 = load i32, i32* @PERF_COUNT_SW_EMULATION_FAULTS, align 4
  %12 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %13 = call i32 @perf_sw_event(i32 %11, i32 1, %struct.pt_regs* %12, i32 0)
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %68 [
    i32 130, label %15
    i32 129, label %23
    i32 132, label %33
    i32 131, label %41
    i32 128, label %58
  ]

15:                                               ; preds = %3
  %16 = call i32 (...) @smp_processor_id()
  %17 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %16, i32* %22, align 4
  store i32 0, i32* %4, align 4
  br label %69

23:                                               ; preds = %3
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_cpu_data, i32 0, i32 1, i32 0), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_cpu_data, i32 0, i32 0, i32 0), align 4
  %26 = call i32 @min(i32 %24, i32 %25)
  %27 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  store i32 0, i32* %4, align 4
  br label %69

33:                                               ; preds = %3
  %34 = call i32 (...) @read_c0_count()
  %35 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %69

41:                                               ; preds = %3
  %42 = call i32 (...) @current_cpu_type()
  switch i32 %42, label %50 [
    i32 134, label %43
    i32 133, label %43
  ]

43:                                               ; preds = %41, %41
  %44 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 1, i32* %49, align 4
  br label %57

50:                                               ; preds = %41
  %51 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 2, i32* %56, align 4
  br label %57

57:                                               ; preds = %50, %43
  store i32 0, i32* %4, align 4
  br label %69

58:                                               ; preds = %3
  %59 = load %struct.thread_info*, %struct.thread_info** %8, align 8
  %60 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %69

68:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %58, %57, %33, %23, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.thread_info* @task_thread_info(i32) #1

declare dso_local i32 @perf_sw_event(i32, i32, %struct.pt_regs*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @read_c0_count(...) #1

declare dso_local i32 @current_cpu_type(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
