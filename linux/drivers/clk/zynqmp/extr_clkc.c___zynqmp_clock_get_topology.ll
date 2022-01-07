; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c___zynqmp_clock_get_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c___zynqmp_clock_get_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_topology = type { i8*, i8*, i64 }
%struct.topology_resp = type { i32* }

@CLK_TOPOLOGY_TYPE = common dso_local global i32 0, align 4
@TYPE_INVALID = common dso_local global i64 0, align 8
@END_OF_TOPOLOGY_NODE = common dso_local global i32 0, align 4
@CLK_TOPOLOGY_FLAGS = common dso_local global i32 0, align 4
@CLK_TOPOLOGY_TYPE_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_topology*, %struct.topology_resp*, i64*)* @__zynqmp_clock_get_topology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__zynqmp_clock_get_topology(%struct.clock_topology* %0, %struct.topology_resp* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clock_topology*, align 8
  %6 = alloca %struct.topology_resp*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.clock_topology* %0, %struct.clock_topology** %5, align 8
  store %struct.topology_resp* %1, %struct.topology_resp** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %71, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.topology_resp*, %struct.topology_resp** %6, align 8
  %13 = getelementptr inbounds %struct.topology_resp, %struct.topology_resp* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %74

17:                                               ; preds = %10
  %18 = load i32, i32* @CLK_TOPOLOGY_TYPE, align 4
  %19 = load %struct.topology_resp*, %struct.topology_resp** %6, align 8
  %20 = getelementptr inbounds %struct.topology_resp, %struct.topology_resp* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @FIELD_GET(i32 %18, i32 %25)
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @TYPE_INVALID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i32, i32* @END_OF_TOPOLOGY_NODE, align 4
  store i32 %32, i32* %4, align 4
  br label %75

33:                                               ; preds = %17
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.clock_topology*, %struct.clock_topology** %5, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %35, i64 %37
  %39 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %38, i32 0, i32 2
  store i64 %34, i64* %39, align 8
  %40 = load i32, i32* @CLK_TOPOLOGY_FLAGS, align 4
  %41 = load %struct.topology_resp*, %struct.topology_resp** %6, align 8
  %42 = getelementptr inbounds %struct.topology_resp, %struct.topology_resp* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @FIELD_GET(i32 %40, i32 %47)
  %49 = load %struct.clock_topology*, %struct.clock_topology** %5, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %49, i64 %51
  %53 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %52, i32 0, i32 1
  store i8* %48, i8** %53, align 8
  %54 = load i32, i32* @CLK_TOPOLOGY_TYPE_FLAGS, align 4
  %55 = load %struct.topology_resp*, %struct.topology_resp** %6, align 8
  %56 = getelementptr inbounds %struct.topology_resp, %struct.topology_resp* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @FIELD_GET(i32 %54, i32 %61)
  %63 = load %struct.clock_topology*, %struct.clock_topology** %5, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %63, i64 %65
  %67 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %66, i32 0, i32 0
  store i8* %62, i8** %67, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %33
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %10

74:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %31
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
