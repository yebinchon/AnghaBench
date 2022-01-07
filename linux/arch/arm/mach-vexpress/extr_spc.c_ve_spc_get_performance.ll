; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_spc.c_ve_spc_get_performance.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_spc.c_ve_spc_get_performance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64*, %struct.ve_spc_opp** }
%struct.ve_spc_opp = type { i64 }

@info = common dso_local global %struct.TYPE_2__* null, align 8
@PERF_LVL_A15 = common dso_local global i64 0, align 8
@PERF_LVL_A7 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @ve_spc_get_performance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ve_spc_get_performance(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ve_spc_opp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load %struct.ve_spc_opp**, %struct.ve_spc_opp*** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ve_spc_opp*, %struct.ve_spc_opp** %11, i64 %13
  %15 = load %struct.ve_spc_opp*, %struct.ve_spc_opp** %14, align 8
  store %struct.ve_spc_opp* %15, %struct.ve_spc_opp** %6, align 8
  store i64 0, i64* %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @cluster_is_a15(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @PERF_LVL_A15, align 8
  br label %23

21:                                               ; preds = %2
  %22 = load i64, i64* @PERF_LVL_A7, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  store i64 %24, i64* %7, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @readl_relaxed(i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %31, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %51

43:                                               ; preds = %23
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.ve_spc_opp*, %struct.ve_spc_opp** %6, align 8
  %46 = getelementptr inbounds %struct.ve_spc_opp, %struct.ve_spc_opp* %45, i64 %44
  store %struct.ve_spc_opp* %46, %struct.ve_spc_opp** %6, align 8
  %47 = load %struct.ve_spc_opp*, %struct.ve_spc_opp** %6, align 8
  %48 = getelementptr inbounds %struct.ve_spc_opp, %struct.ve_spc_opp* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %5, align 8
  store i64 %49, i64* %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %43, %40
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @cluster_is_a15(i32) #1

declare dso_local i64 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
