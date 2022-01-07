; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_adjust_cluster_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_adjust_cluster_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.mc_cluster* }
%struct.mc_cluster = type { i32, i32, i32, i32 }

@CurConf = common dso_local global %struct.TYPE_2__* null, align 8
@AMORT_FACTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adjust_cluster_stats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mc_cluster*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurConf, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %5 = load %struct.mc_cluster*, %struct.mc_cluster** %4, align 8
  store %struct.mc_cluster* %5, %struct.mc_cluster** %2, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %33, %0
  %7 = load i32, i32* %1, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurConf, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %6
  %13 = load i32, i32* @AMORT_FACTOR, align 4
  %14 = load %struct.mc_cluster*, %struct.mc_cluster** %2, align 8
  %15 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @AMORT_FACTOR, align 4
  %19 = load %struct.mc_cluster*, %struct.mc_cluster** %2, align 8
  %20 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @AMORT_FACTOR, align 4
  %24 = load %struct.mc_cluster*, %struct.mc_cluster** %2, align 8
  %25 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @AMORT_FACTOR, align 4
  %29 = load %struct.mc_cluster*, %struct.mc_cluster** %2, align 8
  %30 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %12
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  %36 = load %struct.mc_cluster*, %struct.mc_cluster** %2, align 8
  %37 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %36, i32 1
  store %struct.mc_cluster* %37, %struct.mc_cluster** %2, align 8
  br label %6

38:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
