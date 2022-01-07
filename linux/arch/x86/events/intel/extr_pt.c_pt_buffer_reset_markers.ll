; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_buffer_reset_markers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_buffer_reset_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_buffer = type { i64, i32, i64, i64, %struct.TYPE_2__*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.perf_output_handle = type { i64, i64 }

@PERF_AUX_FLAG_TRUNCATED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PT_CAP_topa_multiple_entries = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_buffer*, %struct.perf_output_handle*)* @pt_buffer_reset_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_buffer_reset_markers(%struct.pt_buffer* %0, %struct.perf_output_handle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_buffer*, align 8
  %5 = alloca %struct.perf_output_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pt_buffer* %0, %struct.pt_buffer** %4, align 8
  store %struct.perf_output_handle* %1, %struct.perf_output_handle** %5, align 8
  %10 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %10, i32 0, i32 6
  %12 = call i64 @local64_read(i32* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %17 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %15, %18
  %20 = add i64 %19, 1
  %21 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %22 = call i64 @pt_buffer_region_size(%struct.pt_buffer* %21)
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %26 = load i32, i32* @PERF_AUX_FLAG_TRUNCATED, align 4
  %27 = call i32 @perf_aux_output_flag(%struct.perf_output_handle* %25, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %173

30:                                               ; preds = %2
  %31 = load i32, i32* @PT_CAP_topa_multiple_entries, align 4
  %32 = call i32 @intel_pt_validate_hw_cap(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %173

35:                                               ; preds = %30
  %36 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %36, i32 0, i32 5
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %41, i32 0, i32 5
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %46 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %45, i32 0, i32 5
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %35
  %50 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %56 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %61 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PAGE_SHIFT, align 8
  %64 = lshr i64 %62, %63
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %67 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %65, %68
  %70 = add i64 %69, 1
  %71 = call i32 @offset_in_page(i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %59
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %76

76:                                               ; preds = %73, %59
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @PAGE_SHIFT, align 8
  %79 = lshr i64 %77, %78
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %79, %80
  store i64 %81, i64* %7, align 8
  %82 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %83 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %7, align 8
  %88 = and i64 %87, %86
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %91 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %76
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %97 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i8* @pt_topa_entry_for_page(%struct.pt_buffer* %98, i64 %99)
  %101 = bitcast i8* %100 to %struct.TYPE_2__*
  %102 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %103 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %102, i32 0, i32 5
  store %struct.TYPE_2__* %101, %struct.TYPE_2__** %103, align 8
  %104 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %105 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %106 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %105, i32 0, i32 5
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = call i8* @pt_topa_prev_entry(%struct.pt_buffer* %104, %struct.TYPE_2__* %107)
  %109 = bitcast i8* %108 to %struct.TYPE_2__*
  %110 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %111 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %110, i32 0, i32 5
  store %struct.TYPE_2__* %109, %struct.TYPE_2__** %111, align 8
  br label %112

112:                                              ; preds = %94, %76
  %113 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %114 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PAGE_SHIFT, align 8
  %117 = lshr i64 %115, %116
  store i64 %117, i64* %9, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* @PAGE_SHIFT, align 8
  %120 = lshr i64 %118, %119
  %121 = load i64, i64* %8, align 8
  %122 = add i64 %120, %121
  %123 = sub i64 %122, 1
  store i64 %123, i64* %7, align 8
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* %9, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %112
  %128 = load i64, i64* %9, align 8
  store i64 %128, i64* %7, align 8
  br label %129

129:                                              ; preds = %127, %112
  %130 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %131 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %7, align 8
  %136 = and i64 %135, %134
  store i64 %136, i64* %7, align 8
  %137 = load i64, i64* %7, align 8
  %138 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %139 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %137, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %129
  %143 = load i64, i64* %7, align 8
  %144 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %145 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %144, i32 0, i32 3
  store i64 %143, i64* %145, align 8
  %146 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %147 = load i64, i64* %7, align 8
  %148 = call i8* @pt_topa_entry_for_page(%struct.pt_buffer* %146, i64 %147)
  %149 = bitcast i8* %148 to %struct.TYPE_2__*
  %150 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %151 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %150, i32 0, i32 4
  store %struct.TYPE_2__* %149, %struct.TYPE_2__** %151, align 8
  %152 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %153 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %154 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %153, i32 0, i32 4
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = call i8* @pt_topa_prev_entry(%struct.pt_buffer* %152, %struct.TYPE_2__* %155)
  %157 = bitcast i8* %156 to %struct.TYPE_2__*
  %158 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %159 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %158, i32 0, i32 4
  store %struct.TYPE_2__* %157, %struct.TYPE_2__** %159, align 8
  br label %160

160:                                              ; preds = %142, %129
  %161 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %162 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %161, i32 0, i32 5
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  store i32 1, i32* %164, align 4
  %165 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %166 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %165, i32 0, i32 5
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  store i32 1, i32* %168, align 4
  %169 = load %struct.pt_buffer*, %struct.pt_buffer** %4, align 8
  %170 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %169, i32 0, i32 4
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %160, %34, %24
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @pt_buffer_region_size(%struct.pt_buffer*) #1

declare dso_local i32 @perf_aux_output_flag(%struct.perf_output_handle*, i32) #1

declare dso_local i32 @intel_pt_validate_hw_cap(i32) #1

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local i8* @pt_topa_entry_for_page(%struct.pt_buffer*, i64) #1

declare dso_local i8* @pt_topa_prev_entry(%struct.pt_buffer*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
