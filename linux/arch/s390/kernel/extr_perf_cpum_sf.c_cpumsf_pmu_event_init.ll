; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_pmu_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_pmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, {}*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@PERF_EVENT_CPUM_SF = common dso_local global i32 0, align 4
@PERF_EVENT_CPUM_SF_DIAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @cpumsf_pmu_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpumsf_pmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = call i64 @has_branch_stack(%struct.perf_event* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %111

11:                                               ; preds = %1
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %52 [
    i32 128, label %16
    i32 129, label %34
  ]

16:                                               ; preds = %11
  %17 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PERF_EVENT_CPUM_SF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %25 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PERF_EVENT_CPUM_SF_DIAG, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %111

33:                                               ; preds = %23, %16
  br label %55

34:                                               ; preds = %11
  %35 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %36 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PERF_COUNT_HW_CPU_CYCLES, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %111

44:                                               ; preds = %34
  %45 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %46 = call i32 @is_sampling_event(%struct.perf_event* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %111

51:                                               ; preds = %44
  br label %55

52:                                               ; preds = %11
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %111

55:                                               ; preds = %51, %33
  %56 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %57 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %62 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @cpu_online(i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %111

69:                                               ; preds = %60, %55
  %70 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %71 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %77 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %69
  %80 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %81 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %87 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %91 = call i32 @__hw_perf_event_init(%struct.perf_event* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %97 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %96, i32 0, i32 1
  %98 = bitcast {}** %97 to i32 (%struct.perf_event*)**
  %99 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %98, align 8
  %100 = icmp ne i32 (%struct.perf_event*)* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %103 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %102, i32 0, i32 1
  %104 = bitcast {}** %103 to i32 (%struct.perf_event*)**
  %105 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %104, align 8
  %106 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %107 = call i32 %105(%struct.perf_event* %106)
  br label %108

108:                                              ; preds = %101, %95
  br label %109

109:                                              ; preds = %108, %89
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %66, %52, %48, %41, %30, %8
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i64 @has_branch_stack(%struct.perf_event*) #1

declare dso_local i32 @is_sampling_event(%struct.perf_event*) #1

declare dso_local i32 @cpu_online(i64) #1

declare dso_local i32 @__hw_perf_event_init(%struct.perf_event*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
