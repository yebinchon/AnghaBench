; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_maybe_change_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_maybe_change_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { i64, i32, i64*, i32, %struct.perf_event**, i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i64, i32, i32 }

@PMC_NO_INDEX = common dso_local global i64 0, align 8
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*)* @maybe_change_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_change_configuration(%struct.cpu_hw_events* %0) #0 {
  %2 = alloca %struct.cpu_hw_events*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %2, align 8
  %8 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %9 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %154

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %70, %13
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %17 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %14
  %21 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %22 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %21, i32 0, i32 4
  %23 = load %struct.perf_event**, %struct.perf_event*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %23, i64 %25
  %27 = load %struct.perf_event*, %struct.perf_event** %26, align 8
  store %struct.perf_event* %27, %struct.perf_event** %4, align 8
  %28 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %29 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PMC_NO_INDEX, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %20
  %38 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %39 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %46 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %44, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %37
  %51 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %52 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %53 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %52, i32 0, i32 0
  %54 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %55 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @alpha_perf_event_update(%struct.perf_event* %51, %struct.hw_perf_event* %53, i64 %60, i32 0)
  %62 = load i64, i64* @PMC_NO_INDEX, align 8
  %63 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %64 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 %62, i64* %68, align 8
  br label %69

69:                                               ; preds = %50, %37, %20
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %14

73:                                               ; preds = %14
  %74 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %75 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %74, i32 0, i32 3
  store i32 0, i32* %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %140, %73
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %79 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %143

82:                                               ; preds = %76
  %83 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %84 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %83, i32 0, i32 4
  %85 = load %struct.perf_event**, %struct.perf_event*** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %85, i64 %87
  %89 = load %struct.perf_event*, %struct.perf_event** %88, align 8
  store %struct.perf_event* %89, %struct.perf_event** %5, align 8
  %90 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %91 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %90, i32 0, i32 0
  store %struct.hw_perf_event* %91, %struct.hw_perf_event** %6, align 8
  %92 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %93 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %7, align 4
  %96 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %97 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PMC_NO_INDEX, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %82
  %106 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %107 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @alpha_perf_event_set_period(%struct.perf_event* %106, %struct.hw_perf_event* %107, i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %113 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  store i64 %111, i64* %117, align 8
  br label %118

118:                                              ; preds = %105, %82
  %119 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %120 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @PERF_HES_STOPPED, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %118
  %126 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %127 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %126, i32 0, i32 2
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = shl i32 1, %133
  %135 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %136 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %125, %118
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %76

143:                                              ; preds = %76
  %144 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %145 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %144, i32 0, i32 4
  %146 = load %struct.perf_event**, %struct.perf_event*** %145, align 8
  %147 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %146, i64 0
  %148 = load %struct.perf_event*, %struct.perf_event** %147, align 8
  %149 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %153 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %143, %12
  ret void
}

declare dso_local i32 @alpha_perf_event_update(%struct.perf_event*, %struct.hw_perf_event*, i64, i32) #1

declare dso_local i32 @alpha_perf_event_set_period(%struct.perf_event*, %struct.hw_perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
