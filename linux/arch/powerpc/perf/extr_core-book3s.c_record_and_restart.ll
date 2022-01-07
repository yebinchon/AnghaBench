; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_record_and_restart.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_record_and_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32*)*, i32, i32 (i32*, i32, %struct.pt_regs*)* }
%struct.pt_regs = type { i32 }
%struct.perf_event = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i64, i32, i32, i32 }
%struct.perf_sample_data = type { i32, i32, i32*, i32 }
%struct.cpu_hw_events = type { i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_SAMPLE_ADDR = common dso_local global i32 0, align 4
@PERF_SAMPLE_PHYS_ADDR = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_STACK = common dso_local global i32 0, align 4
@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_SAMPLE_DATA_SRC = common dso_local global i32 0, align 4
@ppmu = common dso_local global %struct.TYPE_6__* null, align 8
@PERF_SAMPLE_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i64, %struct.pt_regs*)* @record_and_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_and_restart(%struct.perf_event* %0, i64 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.perf_sample_data, align 8
  %13 = alloca %struct.cpu_hw_events*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PERF_HES_STOPPED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @write_pmc(i32 %29, i64 0)
  br label %191

31:                                               ; preds = %3
  %32 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = call i64 @local64_read(i32* %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @check_and_compute_delta(i64 %36, i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 2
  %42 = call i32 @local64_add(i64 %39, i32* %41)
  store i64 0, i64* %5, align 8
  %43 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = call i64 @local64_read(i32* %45)
  %47 = load i64, i64* %9, align 8
  %48 = sub nsw i64 %46, %47
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %31
  %52 = load i64, i64* %10, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %51, %31
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %54
  %58 = load i64, i64* %10, align 8
  %59 = icmp sle i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i64, i64* %7, align 8
  store i64 %67, i64* %10, align 8
  br label %68

68:                                               ; preds = %66, %60
  %69 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %70 = call i32 @siar_valid(%struct.pt_regs* %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %72 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %76 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %68, %57
  %79 = load i64, i64* %10, align 8
  %80 = icmp slt i64 %79, 2147483648
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i64, i64* %10, align 8
  %83 = sub nsw i64 2147483648, %82
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84, %54
  %86 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %87 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @write_pmc(i32 %89, i64 %90)
  %92 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %93 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @local64_set(i32* %94, i64 %95)
  %97 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %98 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @local64_set(i32* %99, i64 %100)
  %102 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %103 = call i32 @perf_event_update_userpage(%struct.perf_event* %102)
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %191

106:                                              ; preds = %85
  %107 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %108 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %12, i64 -1, i64 %110)
  %112 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %113 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @PERF_SAMPLE_ADDR, align 4
  %117 = load i32, i32* @PERF_SAMPLE_PHYS_ADDR, align 4
  %118 = or i32 %116, %117
  %119 = and i32 %115, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %106
  %122 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %123 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %12, i32 0, i32 3
  %124 = call i32 @perf_get_data_addr(%struct.pt_regs* %122, i32* %123)
  br label %125

125:                                              ; preds = %121, %106
  %126 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %127 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @PERF_SAMPLE_BRANCH_STACK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %125
  %134 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %134, %struct.cpu_hw_events** %13, align 8
  %135 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %13, align 8
  %136 = call i32 @power_pmu_bhrb_read(%struct.cpu_hw_events* %135)
  %137 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %13, align 8
  %138 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %12, i32 0, i32 2
  store i32* %138, i32** %139, align 8
  br label %140

140:                                              ; preds = %133, %125
  %141 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %142 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @PERF_SAMPLE_DATA_SRC, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %140
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i32 (i32*, i32, %struct.pt_regs*)*, i32 (i32*, i32, %struct.pt_regs*)** %150, align 8
  %152 = icmp ne i32 (i32*, i32, %struct.pt_regs*)* %151, null
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i32 (i32*, i32, %struct.pt_regs*)*, i32 (i32*, i32, %struct.pt_regs*)** %155, align 8
  %157 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %12, i32 0, i32 1
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %162 = call i32 %156(i32* %157, i32 %160, %struct.pt_regs* %161)
  br label %163

163:                                              ; preds = %153, %148, %140
  %164 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %165 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @PERF_SAMPLE_WEIGHT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %163
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32 (i32*)*, i32 (i32*)** %173, align 8
  %175 = icmp ne i32 (i32*)* %174, null
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32 (i32*)*, i32 (i32*)** %178, align 8
  %180 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %12, i32 0, i32 0
  %181 = call i32 %179(i32* %180)
  br label %182

182:                                              ; preds = %176, %171, %163
  %183 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %184 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %185 = call i64 @perf_event_overflow(%struct.perf_event* %183, %struct.perf_sample_data* %12, %struct.pt_regs* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %189 = call i32 @power_pmu_stop(%struct.perf_event* %188, i32 0)
  br label %190

190:                                              ; preds = %187, %182
  br label %191

191:                                              ; preds = %25, %190, %85
  ret void
}

declare dso_local i32 @write_pmc(i32, i64) #1

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @check_and_compute_delta(i64, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

declare dso_local i32 @siar_valid(%struct.pt_regs*) #1

declare dso_local i32 @local64_set(i32*, i64) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i64, i64) #1

declare dso_local i32 @perf_get_data_addr(%struct.pt_regs*, i32*) #1

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @power_pmu_bhrb_read(%struct.cpu_hw_events*) #1

declare dso_local i64 @perf_event_overflow(%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @power_pmu_stop(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
