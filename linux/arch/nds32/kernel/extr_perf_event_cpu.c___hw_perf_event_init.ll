; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c___hw_perf_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c___hw_perf_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.perf_event*, %struct.TYPE_3__, %struct.hw_perf_event, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hw_perf_event = type { i32, i64, i32, i32, i32, i64, i64 }
%struct.nds32_pmu = type { i32 (%struct.perf_event*)*, i32, i64 (%struct.hw_perf_event*, %struct.TYPE_3__*)* }

@.str = private unnamed_addr constant [29 x i8] c"event %x:%llx not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"NDS performance counters do not support mode exclusion\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @__hw_perf_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hw_perf_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.nds32_pmu*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.nds32_pmu* @to_nds32_pmu(i32 %9)
  store %struct.nds32_pmu* %10, %struct.nds32_pmu** %4, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 2
  store %struct.hw_perf_event* %12, %struct.hw_perf_event** %5, align 8
  %13 = load %struct.nds32_pmu*, %struct.nds32_pmu** %4, align 8
  %14 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %13, i32 0, i32 0
  %15 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %14, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %17 = call i32 %15(%struct.perf_event* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %106

31:                                               ; preds = %1
  %32 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %33 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %35 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %39 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.nds32_pmu*, %struct.nds32_pmu** %4, align 8
  %41 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %40, i32 0, i32 2
  %42 = load i64 (%struct.hw_perf_event*, %struct.TYPE_3__*)*, i64 (%struct.hw_perf_event*, %struct.TYPE_3__*)** %41, align 8
  %43 = icmp ne i64 (%struct.hw_perf_event*, %struct.TYPE_3__*)* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load %struct.nds32_pmu*, %struct.nds32_pmu** %4, align 8
  %46 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %45, i32 0, i32 2
  %47 = load i64 (%struct.hw_perf_event*, %struct.TYPE_3__*)*, i64 (%struct.hw_perf_event*, %struct.TYPE_3__*)** %46, align 8
  %48 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %49 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 1
  %51 = call i64 %47(%struct.hw_perf_event* %48, %struct.TYPE_3__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44, %31
  %54 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 1
  %56 = call i64 @event_requires_mode_exclusion(%struct.TYPE_3__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %106

62:                                               ; preds = %53, %44
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %66 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = or i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %70 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %62
  %74 = load %struct.nds32_pmu*, %struct.nds32_pmu** %4, align 8
  %75 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = ashr i32 %76, 1
  %78 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %79 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %81 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %84 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %86 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %85, i32 0, i32 4
  %87 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %88 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @local64_set(i32* %86, i32 %89)
  br label %91

91:                                               ; preds = %73, %62
  %92 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %93 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %92, i32 0, i32 0
  %94 = load %struct.perf_event*, %struct.perf_event** %93, align 8
  %95 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %96 = icmp ne %struct.perf_event* %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %99 = call i64 @validate_group(%struct.perf_event* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %106

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %91
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %101, %58, %20
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.nds32_pmu* @to_nds32_pmu(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @event_requires_mode_exclusion(%struct.TYPE_3__*) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i64 @validate_group(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
