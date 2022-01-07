; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_handle_status.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_handle_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt = type { i32 }
%struct.pt_buffer = type { i64, i32 }

@MSR_IA32_RTIT_STATUS = common dso_local global i32 0, align 4
@RTIT_STATUS_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ToPA ERROR encountered, trying to recover\0A\00", align 1
@RTIT_STATUS_STOPPED = common dso_local global i32 0, align 4
@PT_CAP_topa_multiple_entries = common dso_local global i32 0, align 4
@PERF_AUX_FLAG_TRUNCATED = common dso_local global i32 0, align 4
@TOPA_PMI_MARGIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt*)* @pt_handle_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt_handle_status(%struct.pt* %0) #0 {
  %2 = alloca %struct.pt*, align 8
  %3 = alloca %struct.pt_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.pt* %0, %struct.pt** %2, align 8
  %7 = load %struct.pt*, %struct.pt** %2, align 8
  %8 = getelementptr inbounds %struct.pt, %struct.pt* %7, i32 0, i32 0
  %9 = call %struct.pt_buffer* @perf_get_aux(i32* %8)
  store %struct.pt_buffer* %9, %struct.pt_buffer** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @MSR_IA32_RTIT_STATUS, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @rdmsrl(i32 %10, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @RTIT_STATUS_ERROR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %20 = call i32 @pt_topa_dump(%struct.pt_buffer* %19)
  %21 = load i32, i32* @RTIT_STATUS_ERROR, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %17, %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @RTIT_STATUS_STOPPED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = load i32, i32* @RTIT_STATUS_STOPPED, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @PT_CAP_topa_multiple_entries, align 4
  %36 = call i32 @intel_pt_validate_hw_cap(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %40 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %43 = call i64 @pt_buffer_region_size(%struct.pt_buffer* %42)
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38, %30
  %46 = load %struct.pt*, %struct.pt** %2, align 8
  %47 = getelementptr inbounds %struct.pt, %struct.pt* %46, i32 0, i32 0
  %48 = load i32, i32* @PERF_AUX_FLAG_TRUNCATED, align 4
  %49 = call i32 @perf_aux_output_flag(i32* %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %38
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32, i32* @PT_CAP_topa_multiple_entries, align 4
  %55 = call i32 @intel_pt_validate_hw_cap(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %88, label %57

57:                                               ; preds = %53
  %58 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %59 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %88, label %62

62:                                               ; preds = %57
  %63 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %64 = call i64 @pt_buffer_region_size(%struct.pt_buffer* %63)
  %65 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %66 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = load i64, i64* @TOPA_PMI_MARGIN, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %62
  %72 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %73 = call i8* @pt_buffer_region(%struct.pt_buffer* %72)
  store i8* %73, i8** %6, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %76 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr i8, i8* %74, i64 %77
  %79 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %80 = call i64 @pt_buffer_region_size(%struct.pt_buffer* %79)
  %81 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %82 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  %85 = call i32 @memset(i8* %78, i32 0, i64 %84)
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %71, %62, %57, %53
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %93 = call i32 @pt_buffer_advance(%struct.pt_buffer* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* @MSR_IA32_RTIT_STATUS, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @wrmsrl(i32 %95, i32 %96)
  ret void
}

declare dso_local %struct.pt_buffer* @perf_get_aux(i32*) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @pr_err_ratelimited(i8*) #1

declare dso_local i32 @pt_topa_dump(%struct.pt_buffer*) #1

declare dso_local i32 @intel_pt_validate_hw_cap(i32) #1

declare dso_local i64 @pt_buffer_region_size(%struct.pt_buffer*) #1

declare dso_local i32 @perf_aux_output_flag(i32*, i32) #1

declare dso_local i8* @pt_buffer_region(%struct.pt_buffer*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @pt_buffer_advance(%struct.pt_buffer*) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
