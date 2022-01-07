; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_drain_bts_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_drain_bts_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.cpu_hw_events = type { %struct.perf_event**, %struct.debug_store* }
%struct.perf_event = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.debug_store = type { i64, i64 }
%struct.bts_record = type { i32, i32, i32 }
%struct.perf_output_handle = type { i32 }
%struct.perf_event_header = type { i32 }
%struct.perf_sample_data = type { i32, i32 }
%struct.pt_regs = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@INTEL_PMC_IDX_FIXED_BTS = common dso_local global i64 0, align 8
@x86_pmu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@POLL_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_pmu_drain_bts_buffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cpu_hw_events*, align 8
  %3 = alloca %struct.debug_store*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.bts_record*, align 8
  %6 = alloca %struct.bts_record*, align 8
  %7 = alloca %struct.bts_record*, align 8
  %8 = alloca %struct.perf_output_handle, align 4
  %9 = alloca %struct.perf_event_header, align 4
  %10 = alloca %struct.perf_sample_data, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.pt_regs, align 4
  %13 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %13, %struct.cpu_hw_events** %2, align 8
  %14 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %15 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %14, i32 0, i32 1
  %16 = load %struct.debug_store*, %struct.debug_store** %15, align 8
  store %struct.debug_store* %16, %struct.debug_store** %3, align 8
  %17 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %18 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %17, i32 0, i32 0
  %19 = load %struct.perf_event**, %struct.perf_event*** %18, align 8
  %20 = load i64, i64* @INTEL_PMC_IDX_FIXED_BTS, align 8
  %21 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %19, i64 %20
  %22 = load %struct.perf_event*, %struct.perf_event** %21, align 8
  store %struct.perf_event* %22, %struct.perf_event** %4, align 8
  store i64 0, i64* %11, align 8
  %23 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %24 = icmp ne %struct.perf_event* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %157

26:                                               ; preds = %0
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0), align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %157

30:                                               ; preds = %26
  %31 = load %struct.debug_store*, %struct.debug_store** %3, align 8
  %32 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.bts_record*
  store %struct.bts_record* %34, %struct.bts_record** %6, align 8
  %35 = load %struct.debug_store*, %struct.debug_store** %3, align 8
  %36 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.bts_record*
  store %struct.bts_record* %38, %struct.bts_record** %7, align 8
  %39 = load %struct.bts_record*, %struct.bts_record** %7, align 8
  %40 = load %struct.bts_record*, %struct.bts_record** %6, align 8
  %41 = icmp ule %struct.bts_record* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 0, i32* %1, align 4
  br label %157

43:                                               ; preds = %30
  %44 = call i32 @memset(%struct.pt_regs* %12, i32 0, i32 4)
  %45 = load %struct.debug_store*, %struct.debug_store** %3, align 8
  %46 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.debug_store*, %struct.debug_store** %3, align 8
  %49 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %10, i32 0, i32 %53)
  %55 = load %struct.bts_record*, %struct.bts_record** %6, align 8
  store %struct.bts_record* %55, %struct.bts_record** %5, align 8
  br label %56

56:                                               ; preds = %82, %43
  %57 = load %struct.bts_record*, %struct.bts_record** %5, align 8
  %58 = load %struct.bts_record*, %struct.bts_record** %7, align 8
  %59 = icmp ult %struct.bts_record* %57, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %56
  %61 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %62 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load %struct.bts_record*, %struct.bts_record** %5, align 8
  %68 = getelementptr inbounds %struct.bts_record, %struct.bts_record* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @kernel_ip(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.bts_record*, %struct.bts_record** %5, align 8
  %74 = getelementptr inbounds %struct.bts_record, %struct.bts_record* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @kernel_ip(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72, %66
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %11, align 8
  br label %81

81:                                               ; preds = %78, %72, %60
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.bts_record*, %struct.bts_record** %5, align 8
  %84 = getelementptr inbounds %struct.bts_record, %struct.bts_record* %83, i32 1
  store %struct.bts_record* %84, %struct.bts_record** %5, align 8
  br label %56

85:                                               ; preds = %56
  %86 = call i32 (...) @rcu_read_lock()
  %87 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %88 = call i32 @perf_prepare_sample(%struct.perf_event_header* %9, %struct.perf_sample_data* %10, %struct.perf_event* %87, %struct.pt_regs* %12)
  %89 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %90 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %9, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.bts_record*, %struct.bts_record** %7, align 8
  %94 = load %struct.bts_record*, %struct.bts_record** %6, align 8
  %95 = ptrtoint %struct.bts_record* %93 to i64
  %96 = ptrtoint %struct.bts_record* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 12
  %99 = load i64, i64* %11, align 8
  %100 = sub i64 %98, %99
  %101 = mul i64 %92, %100
  %102 = trunc i64 %101 to i32
  %103 = call i64 @perf_output_begin(%struct.perf_output_handle* %8, %struct.perf_event* %89, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %85
  br label %155

106:                                              ; preds = %85
  %107 = load %struct.bts_record*, %struct.bts_record** %6, align 8
  store %struct.bts_record* %107, %struct.bts_record** %5, align 8
  br label %108

108:                                              ; preds = %142, %106
  %109 = load %struct.bts_record*, %struct.bts_record** %5, align 8
  %110 = load %struct.bts_record*, %struct.bts_record** %7, align 8
  %111 = icmp ult %struct.bts_record* %109, %110
  br i1 %111, label %112, label %145

112:                                              ; preds = %108
  %113 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %114 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %112
  %119 = load %struct.bts_record*, %struct.bts_record** %5, align 8
  %120 = getelementptr inbounds %struct.bts_record, %struct.bts_record* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @kernel_ip(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.bts_record*, %struct.bts_record** %5, align 8
  %126 = getelementptr inbounds %struct.bts_record, %struct.bts_record* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @kernel_ip(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124, %118
  br label %142

131:                                              ; preds = %124, %112
  %132 = load %struct.bts_record*, %struct.bts_record** %5, align 8
  %133 = getelementptr inbounds %struct.bts_record, %struct.bts_record* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %10, i32 0, i32 1
  store i32 %134, i32* %135, align 4
  %136 = load %struct.bts_record*, %struct.bts_record** %5, align 8
  %137 = getelementptr inbounds %struct.bts_record, %struct.bts_record* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %10, i32 0, i32 0
  store i32 %138, i32* %139, align 4
  %140 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %141 = call i32 @perf_output_sample(%struct.perf_output_handle* %8, %struct.perf_event_header* %9, %struct.perf_sample_data* %10, %struct.perf_event* %140)
  br label %142

142:                                              ; preds = %131, %130
  %143 = load %struct.bts_record*, %struct.bts_record** %5, align 8
  %144 = getelementptr inbounds %struct.bts_record, %struct.bts_record* %143, i32 1
  store %struct.bts_record* %144, %struct.bts_record** %5, align 8
  br label %108

145:                                              ; preds = %108
  %146 = call i32 @perf_output_end(%struct.perf_output_handle* %8)
  %147 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %148 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* @POLL_IN, align 4
  %153 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %154 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %145, %105
  %156 = call i32 (...) @rcu_read_unlock()
  store i32 1, i32* %1, align 4
  br label %157

157:                                              ; preds = %155, %42, %29, %25
  %158 = load i32, i32* %1, align 4
  ret i32 %158
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i32, i32) #1

declare dso_local i64 @kernel_ip(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @perf_prepare_sample(%struct.perf_event_header*, %struct.perf_sample_data*, %struct.perf_event*, %struct.pt_regs*) #1

declare dso_local i64 @perf_output_begin(%struct.perf_output_handle*, %struct.perf_event*, i32) #1

declare dso_local i32 @perf_output_sample(%struct.perf_output_handle*, %struct.perf_event_header*, %struct.perf_sample_data*, %struct.perf_event*) #1

declare dso_local i32 @perf_output_end(%struct.perf_output_handle*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
