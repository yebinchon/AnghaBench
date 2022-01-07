; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_p4.c_p4_pmu_schedule_events.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_p4.c_p4_pmu_schedule_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i64 }
%struct.p4_event_bind = type { i32* }

@X86_PMC_IDX_MAX = common dso_local global i32 0, align 4
@P4_ESCR_MSR_TABLE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_hw_events*, i32, i32*)* @p4_pmu_schedule_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p4_pmu_schedule_events(%struct.cpu_hw_events* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hw_perf_event*, align 8
  %12 = alloca %struct.p4_event_bind*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %20 = load i32, i32* @X86_PMC_IDX_MAX, align 4
  %21 = call i32 @BITS_TO_LONGS(i32 %20)
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %25 = load i32, i32* @P4_ESCR_MSR_TABLE_SIZE, align 4
  %26 = call i32 @BITS_TO_LONGS(i32 %25)
  %27 = zext i32 %26 to i64
  %28 = alloca i64, i64 %27, align 16
  store i64 %27, i64* %9, align 8
  %29 = call i32 (...) @smp_processor_id()
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @X86_PMC_IDX_MAX, align 4
  %31 = call i32 @bitmap_zero(i64* %24, i32 %30)
  %32 = load i32, i32* @P4_ESCR_MSR_TABLE_SIZE, align 4
  %33 = call i32 @bitmap_zero(i64* %28, i32 %32)
  store i32 0, i32* %13, align 4
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %152, %3
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %157

39:                                               ; preds = %35
  %40 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %41 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %42, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.hw_perf_event* %47, %struct.hw_perf_event** %11, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @p4_ht_thread(i32 %48)
  store i32 %49, i32* %14, align 4
  store i32 0, i32* %19, align 4
  br label %50

50:                                               ; preds = %118, %39
  %51 = load i32, i32* %19, align 4
  %52 = icmp sgt i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %158

54:                                               ; preds = %50
  %55 = load %struct.hw_perf_event*, %struct.hw_perf_event** %11, align 8
  %56 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call %struct.p4_event_bind* @p4_config_get_bind(i64 %57)
  store %struct.p4_event_bind* %58, %struct.p4_event_bind** %12, align 8
  %59 = load %struct.p4_event_bind*, %struct.p4_event_bind** %12, align 8
  %60 = getelementptr inbounds %struct.p4_event_bind, %struct.p4_event_bind* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @p4_get_escr_idx(i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp eq i32 %67, -1
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %54
  br label %158

73:                                               ; preds = %54
  %74 = load %struct.hw_perf_event*, %struct.hw_perf_event** %11, align 8
  %75 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %100

78:                                               ; preds = %73
  %79 = load %struct.hw_perf_event*, %struct.hw_perf_event** %11, align 8
  %80 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i64 @p4_should_swap_ts(i64 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %78
  %86 = load %struct.hw_perf_event*, %struct.hw_perf_event** %11, align 8
  %87 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %16, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.hw_perf_event*, %struct.hw_perf_event** %11, align 8
  %93 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %13, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %85
  br label %147

100:                                              ; preds = %78, %73
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.p4_event_bind*, %struct.p4_event_bind** %12, align 8
  %103 = call i32 @p4_next_cntr(i32 %101, i64* %24, %struct.p4_event_bind* %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %17, align 4
  %108 = call i64 @test_bit(i32 %107, i64* %28)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %106, %100
  %111 = load %struct.hw_perf_event*, %struct.hw_perf_event** %11, align 8
  %112 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @p4_get_alias_event(i64 %113)
  store i64 %114, i64* %18, align 8
  %115 = load i64, i64* %18, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %110
  br label %158

118:                                              ; preds = %110
  %119 = load i64, i64* %18, align 8
  %120 = load %struct.hw_perf_event*, %struct.hw_perf_event** %11, align 8
  %121 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %19, align 4
  br label %50

124:                                              ; preds = %106
  %125 = load %struct.hw_perf_event*, %struct.hw_perf_event** %11, align 8
  %126 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i64 @p4_should_swap_ts(i64 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load %struct.hw_perf_event*, %struct.hw_perf_event** %11, align 8
  %133 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %132, i32 0, i32 0
  store i32 -1, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %124
  %135 = load %struct.hw_perf_event*, %struct.hw_perf_event** %11, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @p4_pmu_swap_config_ts(%struct.hw_perf_event* %135, i32 %136)
  %138 = load i32*, i32** %6, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load i32, i32* %16, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %13, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %140, %134
  br label %147

147:                                              ; preds = %146, %99
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @set_bit(i32 %148, i64* %24)
  %150 = load i32, i32* %17, align 4
  %151 = call i32 @set_bit(i32 %150, i64* %28)
  br label %152

152:                                              ; preds = %147
  %153 = load i32, i32* %13, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %15, align 4
  %156 = add i32 %155, -1
  store i32 %156, i32* %15, align 4
  br label %35

157:                                              ; preds = %35
  br label %158

158:                                              ; preds = %157, %117, %72, %53
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  br label %165

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %164, %161
  %166 = phi i32 [ %163, %161 ], [ 0, %164 ]
  %167 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %167)
  ret i32 %166
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @bitmap_zero(i64*, i32) #1

declare dso_local i32 @p4_ht_thread(i32) #1

declare dso_local %struct.p4_event_bind* @p4_config_get_bind(i64) #1

declare dso_local i32 @p4_get_escr_idx(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @p4_should_swap_ts(i64, i32) #1

declare dso_local i32 @p4_next_cntr(i32, i64*, %struct.p4_event_bind*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i64 @p4_get_alias_event(i64) #1

declare dso_local i32 @p4_pmu_swap_config_ts(%struct.hw_perf_event*, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
