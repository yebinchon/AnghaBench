; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cppc_cpufreq.c_cppc_get_rate_from_fbctrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cppc_cpufreq.c_cppc_get_rate_from_fbctrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppc_cpudata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cppc_perf_fb_ctrs = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cppc_cpudata*, i64, i32, i64, i32)* @cppc_get_rate_from_fbctrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cppc_get_rate_from_fbctrs(%struct.cppc_cpudata* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.cppc_perf_fb_ctrs, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca %struct.cppc_perf_fb_ctrs, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca %struct.cppc_cpudata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %1, i64* %15, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %2, i32* %16, align 4
  %17 = bitcast %struct.cppc_perf_fb_ctrs* %6 to i8*
  %18 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %3, i64* %19, align 4
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %4, i32* %20, align 4
  %21 = bitcast %struct.cppc_perf_fb_ctrs* %8 to i8*
  %22 = bitcast { i64, i32 }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 12, i1 false)
  store %struct.cppc_cpudata* %0, %struct.cppc_cpudata** %10, align 8
  %23 = getelementptr inbounds %struct.cppc_perf_fb_ctrs, %struct.cppc_perf_fb_ctrs* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = getelementptr inbounds %struct.cppc_perf_fb_ctrs, %struct.cppc_perf_fb_ctrs* %8, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.cppc_perf_fb_ctrs, %struct.cppc_perf_fb_ctrs* %6, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @get_delta(i32 %26, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = getelementptr inbounds %struct.cppc_perf_fb_ctrs, %struct.cppc_perf_fb_ctrs* %8, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.cppc_perf_fb_ctrs, %struct.cppc_perf_fb_ctrs* %6, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @get_delta(i32 %31, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %5
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37, %5
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %11, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %14, align 4
  br label %51

46:                                               ; preds = %37
  %47 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %10, align 8
  %48 = getelementptr inbounds %struct.cppc_cpudata, %struct.cppc_cpudata* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %46, %40
  %52 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %10, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @cppc_cpufreq_perf_to_khz(%struct.cppc_cpudata* %52, i32 %53)
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_delta(i32, i32) #2

declare dso_local i32 @cppc_cpufreq_perf_to_khz(%struct.cppc_cpudata*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
