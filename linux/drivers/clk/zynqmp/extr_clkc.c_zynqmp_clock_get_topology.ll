; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_clock_get_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_clock_get_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.clock_topology = type { i32 }
%struct.topology_resp = type { i32 }

@MAX_NODES = common dso_local global i32 0, align 4
@clock = common dso_local global %struct.TYPE_2__* null, align 8
@END_OF_TOPOLOGY_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_topology*, i64*)* @zynqmp_clock_get_topology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_clock_get_topology(i64 %0, %struct.clock_topology* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.clock_topology*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.topology_resp, align 4
  store i64 %0, i64* %5, align 8
  store %struct.clock_topology* %1, %struct.clock_topology** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = bitcast %struct.topology_resp* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load i64*, i64** %7, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %38, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @MAX_NODES, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @zynqmp_pm_clock_get_topology(i32 %22, i32 %23, %struct.topology_resp* %10)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %47

29:                                               ; preds = %17
  %30 = load %struct.clock_topology*, %struct.clock_topology** %6, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = call i32 @__zynqmp_clock_get_topology(%struct.clock_topology* %30, %struct.topology_resp* %10, i64* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @END_OF_TOPOLOGY_NODE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %47

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.topology_resp, %struct.topology_resp* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ARRAY_SIZE(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  br label %13

46:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %36, %27
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @zynqmp_pm_clock_get_topology(i32, i32, %struct.topology_resp*) #2

declare dso_local i32 @__zynqmp_clock_get_topology(%struct.clock_topology*, %struct.topology_resp*, i64*) #2

declare dso_local i64 @ARRAY_SIZE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
