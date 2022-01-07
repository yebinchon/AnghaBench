; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_hw_collect_aux.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_hw_collect_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_sf = type { %struct.perf_output_handle, i32 }
%struct.perf_output_handle = type { i32, i32 }
%struct.aux_buffer = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"The AUX buffer with %lu pages for the diagnostic-sampling mode is full\0A\00", align 1
@sfdbg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"AUX buffer used up\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Sample data caused the AUX buffer with %lu pages to overflow\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"head %lx range %lx overflow %llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"head %lx alert %lx already full, try another\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"aux_reset_buffer: [%lx -> %lx -> %lx] (%lx, %lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_sf*)* @hw_collect_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_collect_aux(%struct.cpu_hw_sf* %0) #0 {
  %2 = alloca %struct.cpu_hw_sf*, align 8
  %3 = alloca %struct.aux_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.perf_output_handle*, align 8
  %9 = alloca i64, align 8
  store %struct.cpu_hw_sf* %0, %struct.cpu_hw_sf** %2, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %2, align 8
  %11 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %10, i32 0, i32 0
  store %struct.perf_output_handle* %11, %struct.perf_output_handle** %8, align 8
  %12 = load %struct.perf_output_handle*, %struct.perf_output_handle** %8, align 8
  %13 = call %struct.aux_buffer* @perf_get_aux(%struct.perf_output_handle* %12)
  store %struct.aux_buffer* %13, %struct.aux_buffer** %3, align 8
  %14 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %15 = icmp ne %struct.aux_buffer* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON_ONCE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %160

21:                                               ; preds = %1
  %22 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %23 = call i32 @AUX_SDB_NUM_ALERT(%struct.aux_buffer* %22)
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %6, align 8
  %27 = load %struct.perf_output_handle*, %struct.perf_output_handle** %8, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @perf_aux_output_end(%struct.perf_output_handle* %27, i64 %28)
  %30 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %31 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %141, %21
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %142

38:                                               ; preds = %34
  %39 = load %struct.perf_output_handle*, %struct.perf_output_handle** %8, align 8
  %40 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %2, align 8
  %41 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.aux_buffer* @perf_aux_output_begin(%struct.perf_output_handle* %39, i32 %42)
  store %struct.aux_buffer* %43, %struct.aux_buffer** %3, align 8
  %44 = load %struct.perf_output_handle*, %struct.perf_output_handle** %8, align 8
  %45 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @sfdbg, align 4
  %52 = call i32 (i32, i32, i8*, ...) @debug_sprintf_event(i32 %51, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %142

53:                                               ; preds = %38
  %54 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %55 = icmp ne %struct.aux_buffer* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @WARN_ON_ONCE(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %160

61:                                               ; preds = %53
  %62 = load %struct.perf_output_handle*, %struct.perf_output_handle** %8, align 8
  %63 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PAGE_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %68 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.perf_output_handle*, %struct.perf_output_handle** %8, align 8
  %70 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* @PAGE_SHIFT, align 4
  %74 = ashr i32 %72, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp eq i64 %76, 1
  br i1 %77, label %78, label %85

78:                                               ; preds = %61
  %79 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %80 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %84 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %96

85:                                               ; preds = %61
  %86 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %87 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %5, align 8
  %91 = udiv i64 %90, 2
  %92 = add i64 %89, %91
  %93 = sub i64 %92, 1
  %94 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %95 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %85, %78
  %97 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %98 = load i64, i64* %5, align 8
  %99 = call i64 @aux_reset_buffer(%struct.aux_buffer* %97, i64 %98, i64* %7)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %96
  %102 = load i64, i64* %7, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  store i32 1, i32* %4, align 4
  br label %142

105:                                              ; preds = %101
  %106 = load i64, i64* %5, align 8
  %107 = load i32, i32* @PAGE_SHIFT, align 4
  %108 = zext i32 %107 to i64
  %109 = shl i64 %106, %108
  store i64 %109, i64* %6, align 8
  %110 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %2, align 8
  %111 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %110, i32 0, i32 0
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @perf_aux_output_end(%struct.perf_output_handle* %111, i64 %112)
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %114)
  %116 = load i32, i32* @sfdbg, align 4
  %117 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %118 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* %7, align 8
  %122 = call i32 (i32, i32, i8*, ...) @debug_sprintf_event(i32 %116, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %119, i64 %120, i64 %121)
  br label %141

123:                                              ; preds = %96
  %124 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %125 = call i32 @AUX_SDB_NUM_ALERT(%struct.aux_buffer* %124)
  %126 = load i32, i32* @PAGE_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %6, align 8
  %129 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %2, align 8
  %130 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %129, i32 0, i32 0
  %131 = load i64, i64* %6, align 8
  %132 = call i32 @perf_aux_output_end(%struct.perf_output_handle* %130, i64 %131)
  %133 = load i32, i32* @sfdbg, align 4
  %134 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %135 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %138 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i32, i32, i8*, ...) @debug_sprintf_event(i32 %133, i32 6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %136, i64 %139)
  br label %141

141:                                              ; preds = %123, %105
  br label %34

142:                                              ; preds = %104, %48, %34
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %142
  %146 = load i32, i32* @sfdbg, align 4
  %147 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %148 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %151 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %154 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %157 = call i32 @AUX_SDB_NUM_ALERT(%struct.aux_buffer* %156)
  %158 = load i64, i64* %5, align 8
  %159 = call i32 (i32, i32, i8*, ...) @debug_sprintf_event(i32 %146, i32 6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %149, i64 %152, i32 %155, i32 %157, i64 %158)
  br label %160

160:                                              ; preds = %20, %60, %145, %142
  ret void
}

declare dso_local %struct.aux_buffer* @perf_get_aux(%struct.perf_output_handle*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @AUX_SDB_NUM_ALERT(%struct.aux_buffer*) #1

declare dso_local i32 @perf_aux_output_end(%struct.perf_output_handle*, i64) #1

declare dso_local %struct.aux_buffer* @perf_aux_output_begin(%struct.perf_output_handle*, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @debug_sprintf_event(i32, i32, i8*, ...) #1

declare dso_local i64 @aux_reset_buffer(%struct.aux_buffer*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
