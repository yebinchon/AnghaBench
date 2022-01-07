; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_pmu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_pmu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.cpu_hw_sf = type { i32, %struct.hws_lsctl_request_block }
%struct.hws_lsctl_request_block = type { i32, i32, i64, i64 }
%struct.hws_qsi_info_block = type { i32, i32, i64 }

@cpu_hw_sf = common dso_local global i32 0, align 4
@PMU_F_ENABLED = common dso_local global i32 0, align 4
@PMU_F_ERR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Loading sampling controls failed: op=%i err=%i\0A\00", align 1
@sfdbg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"cpumsf_pmu_disable: qsi() failed with err=%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @cpumsf_pmu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpumsf_pmu_disable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.cpu_hw_sf*, align 8
  %4 = alloca %struct.hws_lsctl_request_block, align 8
  %5 = alloca %struct.hws_qsi_info_block, align 8
  %6 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %7 = call %struct.cpu_hw_sf* @this_cpu_ptr(i32* @cpu_hw_sf)
  store %struct.cpu_hw_sf* %7, %struct.cpu_hw_sf** %3, align 8
  %8 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %9 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PMU_F_ENABLED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %66

15:                                               ; preds = %1
  %16 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %17 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PMU_F_ERR_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %66

23:                                               ; preds = %15
  %24 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %25 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %24, i32 0, i32 1
  %26 = bitcast %struct.hws_lsctl_request_block* %4 to i8*
  %27 = bitcast %struct.hws_lsctl_request_block* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 24, i1 false)
  %28 = getelementptr inbounds %struct.hws_lsctl_request_block, %struct.hws_lsctl_request_block* %4, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.hws_lsctl_request_block, %struct.hws_lsctl_request_block* %4, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = call i32 @lsctl(%struct.hws_lsctl_request_block* %4)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 2, i32 %34)
  br label %66

36:                                               ; preds = %23
  %37 = call i32 @qsi(%struct.hws_qsi_info_block* %5)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %5, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %5, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %47 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.hws_lsctl_request_block, %struct.hws_lsctl_request_block* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %52 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.hws_lsctl_request_block, %struct.hws_lsctl_request_block* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  br label %54

54:                                               ; preds = %43, %39
  br label %59

55:                                               ; preds = %36
  %56 = load i32, i32* @sfdbg, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @debug_sprintf_event(i32 %56, i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %54
  %60 = load i32, i32* @PMU_F_ENABLED, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %63 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %33, %22, %14
  ret void
}

declare dso_local %struct.cpu_hw_sf* @this_cpu_ptr(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lsctl(%struct.hws_lsctl_request_block*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @qsi(%struct.hws_qsi_info_block*) #1

declare dso_local i32 @debug_sprintf_event(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
