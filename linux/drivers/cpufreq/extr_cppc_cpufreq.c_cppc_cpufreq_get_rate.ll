; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cppc_cpufreq.c_cppc_cpufreq_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cppc_cpufreq.c_cppc_cpufreq_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppc_cpudata = type { i32 }
%struct.cppc_perf_fb_ctrs = type { i32 }

@all_cpu_data = common dso_local global %struct.cppc_cpudata** null, align 8
@apply_hisi_workaround = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cppc_cpufreq_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cppc_cpufreq_get_rate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cppc_perf_fb_ctrs, align 4
  %5 = alloca %struct.cppc_perf_fb_ctrs, align 4
  %6 = alloca %struct.cppc_cpudata*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = bitcast %struct.cppc_perf_fb_ctrs* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = bitcast %struct.cppc_perf_fb_ctrs* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.cppc_cpudata**, %struct.cppc_cpudata*** @all_cpu_data, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cppc_cpudata*, %struct.cppc_cpudata** %10, i64 %12
  %14 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %13, align 8
  store %struct.cppc_cpudata* %14, %struct.cppc_cpudata** %6, align 8
  %15 = load i64, i64* @apply_hisi_workaround, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @hisi_cppc_cpufreq_get_rate(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %42

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @cppc_get_perf_ctrs(i32 %21, %struct.cppc_perf_fb_ctrs* %4)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %20
  %28 = call i32 @udelay(i32 2)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @cppc_get_perf_ctrs(i32 %29, %struct.cppc_perf_fb_ctrs* %5)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %42

35:                                               ; preds = %27
  %36 = load %struct.cppc_cpudata*, %struct.cppc_cpudata** %6, align 8
  %37 = getelementptr inbounds %struct.cppc_perf_fb_ctrs, %struct.cppc_perf_fb_ctrs* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.cppc_perf_fb_ctrs, %struct.cppc_perf_fb_ctrs* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cppc_get_rate_from_fbctrs(%struct.cppc_cpudata* %36, i32 %38, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %35, %33, %25, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hisi_cppc_cpufreq_get_rate(i32) #2

declare dso_local i32 @cppc_get_perf_ctrs(i32, %struct.cppc_perf_fb_ctrs*) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @cppc_get_rate_from_fbctrs(%struct.cppc_cpudata*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
