; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpu_hw_events*, i32, i32*)*, i32 (%struct.perf_event*)* }
%struct.cpu_hw_events = type { i32, i32, i32, i32, i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@X86_PMC_IDX_MAX = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_HES_ARCH = common dso_local global i32 0, align 4
@PERF_PMU_TXN_ADD = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @x86_pmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86_pmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %12, %struct.cpu_hw_events** %5, align 8
  %13 = load i32, i32* @X86_PMC_IDX_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 0
  store %struct.hw_perf_event* %18, %struct.hw_perf_event** %6, align 8
  %19 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %20 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = call i32 @collect_events(%struct.cpu_hw_events* %22, %struct.perf_event* %23, i32 0)
  store i32 %24, i32* %9, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %94

28:                                               ; preds = %2
  %29 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %30 = load i32, i32* @PERF_HES_STOPPED, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %33 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PERF_EF_START, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @PERF_HES_ARCH, align 4
  %40 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %41 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %28
  %45 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %46 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PERF_PMU_TXN_ADD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %69

52:                                               ; preds = %44
  %53 = load i32 (%struct.cpu_hw_events*, i32, i32*)*, i32 (%struct.cpu_hw_events*, i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %54 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 %53(%struct.cpu_hw_events* %54, i32 %55, i32* %16)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %94

60:                                               ; preds = %52
  %61 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %62 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memcpy(i32 %63, i32* %16, i32 %67)
  br label %69

69:                                               ; preds = %60, %51
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %72 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %77 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %84 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 1), align 8
  %88 = icmp ne i32 (%struct.perf_event*)* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %69
  %90 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 1), align 8
  %91 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %92 = call i32 %90(%struct.perf_event* %91)
  br label %93

93:                                               ; preds = %89, %69
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %93, %59, %27
  %95 = load i32, i32* %11, align 4
  %96 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %96)
  ret i32 %95
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @collect_events(%struct.cpu_hw_events*, %struct.perf_event*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
