; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clk-gate-zynqmp.c_zynqmp_clk_register_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clk-gate-zynqmp.c_zynqmp_clk_register_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i32, i32* }
%struct.clock_topology = type { i32, i32 }
%struct.zynqmp_clk_gate = type { %struct.clk_hw, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zynqmp_clk_gate_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_hw* @zynqmp_clk_register_gate(i8* %0, i32 %1, i8** %2, i32 %3, %struct.clock_topology* %4) #0 {
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.clock_topology*, align 8
  %12 = alloca %struct.zynqmp_clk_gate*, align 8
  %13 = alloca %struct.clk_hw*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.clk_init_data, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.clock_topology* %4, %struct.clock_topology** %11, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.zynqmp_clk_gate* @kzalloc(i32 16, i32 %16)
  store %struct.zynqmp_clk_gate* %17, %struct.zynqmp_clk_gate** %12, align 8
  %18 = load %struct.zynqmp_clk_gate*, %struct.zynqmp_clk_gate** %12, align 8
  %19 = icmp ne %struct.zynqmp_clk_gate* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.clk_hw* @ERR_PTR(i32 %22)
  store %struct.clk_hw* %23, %struct.clk_hw** %6, align 8
  br label %59

24:                                               ; preds = %5
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 4
  store i32* @zynqmp_clk_gate_ops, i32** %27, align 8
  %28 = load %struct.clock_topology*, %struct.clock_topology** %11, align 8
  %29 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load i8**, i8*** %9, align 8
  %33 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 1
  store i8** %32, i8*** %33, align 8
  %34 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = load %struct.clock_topology*, %struct.clock_topology** %11, align 8
  %36 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.zynqmp_clk_gate*, %struct.zynqmp_clk_gate** %12, align 8
  %39 = getelementptr inbounds %struct.zynqmp_clk_gate, %struct.zynqmp_clk_gate* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.zynqmp_clk_gate*, %struct.zynqmp_clk_gate** %12, align 8
  %41 = getelementptr inbounds %struct.zynqmp_clk_gate, %struct.zynqmp_clk_gate* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %41, i32 0, i32 0
  store %struct.clk_init_data* %15, %struct.clk_init_data** %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.zynqmp_clk_gate*, %struct.zynqmp_clk_gate** %12, align 8
  %45 = getelementptr inbounds %struct.zynqmp_clk_gate, %struct.zynqmp_clk_gate* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.zynqmp_clk_gate*, %struct.zynqmp_clk_gate** %12, align 8
  %47 = getelementptr inbounds %struct.zynqmp_clk_gate, %struct.zynqmp_clk_gate* %46, i32 0, i32 0
  store %struct.clk_hw* %47, %struct.clk_hw** %13, align 8
  %48 = load %struct.clk_hw*, %struct.clk_hw** %13, align 8
  %49 = call i32 @clk_hw_register(i32* null, %struct.clk_hw* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %24
  %53 = load %struct.zynqmp_clk_gate*, %struct.zynqmp_clk_gate** %12, align 8
  %54 = call i32 @kfree(%struct.zynqmp_clk_gate* %53)
  %55 = load i32, i32* %14, align 4
  %56 = call %struct.clk_hw* @ERR_PTR(i32 %55)
  store %struct.clk_hw* %56, %struct.clk_hw** %13, align 8
  br label %57

57:                                               ; preds = %52, %24
  %58 = load %struct.clk_hw*, %struct.clk_hw** %13, align 8
  store %struct.clk_hw* %58, %struct.clk_hw** %6, align 8
  br label %59

59:                                               ; preds = %57, %20
  %60 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  ret %struct.clk_hw* %60
}

declare dso_local %struct.zynqmp_clk_gate* @kzalloc(i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @clk_hw_register(i32*, %struct.clk_hw*) #1

declare dso_local i32 @kfree(%struct.zynqmp_clk_gate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
