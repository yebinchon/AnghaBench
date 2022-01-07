; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.cpu_hw_sf = type { i32, %struct.perf_event*, %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i64, i64, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.aux_buffer = type { i32 }

@cpu_hw_sf = common dso_local global i32 0, align 4
@PMU_F_IN_USE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @cpumsf_pmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpumsf_pmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpu_hw_sf*, align 8
  %7 = alloca %struct.aux_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.cpu_hw_sf* @this_cpu_ptr(i32* @cpu_hw_sf)
  store %struct.cpu_hw_sf* %9, %struct.cpu_hw_sf** %6, align 8
  %10 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %11 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PMU_F_IN_USE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %161

19:                                               ; preds = %2
  %20 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 1
  %22 = call i64 @SAMPL_DIAG_MODE(%struct.TYPE_8__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %26 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %161

33:                                               ; preds = %24, %19
  store i32 0, i32* %8, align 4
  %34 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @perf_pmu_disable(i32 %36)
  %38 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %39 = load i32, i32* @PERF_HES_STOPPED, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %45 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 6
  store i64 0, i64* %46, align 8
  %47 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %48 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 1
  %52 = call i32 @SAMPL_RATE(%struct.TYPE_8__* %51)
  %53 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %54 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 5
  store i32 %52, i32* %55, align 8
  %56 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %57 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %56, i32 0, i32 1
  %58 = call i64 @SAMPL_DIAG_MODE(%struct.TYPE_8__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %84, label %60

60:                                               ; preds = %33
  %61 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %62 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %66 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i64 %64, i64* %67, align 8
  %68 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %69 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %75 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  store i64 %73, i64* %76, align 8
  %77 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %78 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %77, i32 0, i32 1
  %79 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %80 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @hw_reset_registers(%struct.TYPE_8__* %78, i64 %82)
  br label %84

84:                                               ; preds = %60, %33
  %85 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %86 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %92 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 1
  br label %96

96:                                               ; preds = %90, %84
  %97 = phi i1 [ true, %84 ], [ %95, %90 ]
  %98 = zext i1 %97 to i32
  %99 = call i64 @WARN_ON_ONCE(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @EAGAIN, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  br label %153

104:                                              ; preds = %96
  %105 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %106 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %105, i32 0, i32 1
  %107 = call i64 @SAMPL_DIAG_MODE(%struct.TYPE_8__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %104
  %110 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %111 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %110, i32 0, i32 3
  %112 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %113 = call %struct.aux_buffer* @perf_aux_output_begin(i32* %111, %struct.perf_event* %112)
  store %struct.aux_buffer* %113, %struct.aux_buffer** %7, align 8
  %114 = load %struct.aux_buffer*, %struct.aux_buffer** %7, align 8
  %115 = icmp ne %struct.aux_buffer* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %109
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %8, align 4
  br label %153

119:                                              ; preds = %109
  %120 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %121 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %120, i32 0, i32 3
  %122 = load %struct.aux_buffer*, %struct.aux_buffer** %7, align 8
  %123 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %124 = call i32 @aux_output_begin(i32* %121, %struct.aux_buffer* %122, %struct.cpu_hw_sf* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %153

128:                                              ; preds = %119
  %129 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %130 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 4
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %128, %104
  %133 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %134 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 3
  store i32 1, i32* %135, align 8
  %136 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %137 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %138 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %137, i32 0, i32 1
  store %struct.perf_event* %136, %struct.perf_event** %138, align 8
  %139 = load i32, i32* @PMU_F_IN_USE, align 4
  %140 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %6, align 8
  %141 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @PERF_EF_START, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %132
  %149 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %150 = load i32, i32* @PERF_EF_RELOAD, align 4
  %151 = call i32 @cpumsf_pmu_start(%struct.perf_event* %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %132
  br label %153

153:                                              ; preds = %152, %127, %116, %101
  %154 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %155 = call i32 @perf_event_update_userpage(%struct.perf_event* %154)
  %156 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %157 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @perf_pmu_enable(i32 %158)
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %153, %30, %16
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.cpu_hw_sf* @this_cpu_ptr(i32*) #1

declare dso_local i64 @SAMPL_DIAG_MODE(%struct.TYPE_8__*) #1

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local i32 @SAMPL_RATE(%struct.TYPE_8__*) #1

declare dso_local i32 @hw_reset_registers(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.aux_buffer* @perf_aux_output_begin(i32*, %struct.perf_event*) #1

declare dso_local i32 @aux_output_begin(i32*, %struct.aux_buffer*, %struct.cpu_hw_sf*) #1

declare dso_local i32 @cpumsf_pmu_start(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
