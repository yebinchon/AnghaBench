; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_divider.c_zynqmp_clk_register_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_divider.c_zynqmp_clk_register_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i32, i8**, i32, i32* }
%struct.clock_topology = type { i32, i32, i32 }
%struct.zynqmp_clk_divider = type { i32, %struct.clk_hw, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zynqmp_clk_divider_ops = common dso_local global i32 0, align 4
@CLK_FRAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_hw* @zynqmp_clk_register_divider(i8* %0, i32 %1, i8** %2, i32 %3, %struct.clock_topology* %4) #0 {
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.clock_topology*, align 8
  %12 = alloca %struct.zynqmp_clk_divider*, align 8
  %13 = alloca %struct.clk_hw*, align 8
  %14 = alloca %struct.clk_init_data, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.clock_topology* %4, %struct.clock_topology** %11, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.zynqmp_clk_divider* @kzalloc(i32 32, i32 %16)
  store %struct.zynqmp_clk_divider* %17, %struct.zynqmp_clk_divider** %12, align 8
  %18 = load %struct.zynqmp_clk_divider*, %struct.zynqmp_clk_divider** %12, align 8
  %19 = icmp ne %struct.zynqmp_clk_divider* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.clk_hw* @ERR_PTR(i32 %22)
  store %struct.clk_hw* %23, %struct.clk_hw** %6, align 8
  br label %78

24:                                               ; preds = %5
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %14, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %14, i32 0, i32 4
  store i32* @zynqmp_clk_divider_ops, i32** %27, align 8
  %28 = load %struct.clock_topology*, %struct.clock_topology** %11, align 8
  %29 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CLK_FRAC, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %14, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load i8**, i8*** %9, align 8
  %36 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %14, i32 0, i32 2
  store i8** %35, i8*** %36, align 8
  %37 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %14, i32 0, i32 3
  store i32 1, i32* %37, align 8
  %38 = load %struct.clock_topology*, %struct.clock_topology** %11, align 8
  %39 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CLK_FRAC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.zynqmp_clk_divider*, %struct.zynqmp_clk_divider** %12, align 8
  %48 = getelementptr inbounds %struct.zynqmp_clk_divider, %struct.zynqmp_clk_divider* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.clock_topology*, %struct.clock_topology** %11, align 8
  %50 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.zynqmp_clk_divider*, %struct.zynqmp_clk_divider** %12, align 8
  %53 = getelementptr inbounds %struct.zynqmp_clk_divider, %struct.zynqmp_clk_divider* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.zynqmp_clk_divider*, %struct.zynqmp_clk_divider** %12, align 8
  %55 = getelementptr inbounds %struct.zynqmp_clk_divider, %struct.zynqmp_clk_divider* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %55, i32 0, i32 0
  store %struct.clk_init_data* %14, %struct.clk_init_data** %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.zynqmp_clk_divider*, %struct.zynqmp_clk_divider** %12, align 8
  %59 = getelementptr inbounds %struct.zynqmp_clk_divider, %struct.zynqmp_clk_divider* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.clock_topology*, %struct.clock_topology** %11, align 8
  %61 = getelementptr inbounds %struct.clock_topology, %struct.clock_topology* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.zynqmp_clk_divider*, %struct.zynqmp_clk_divider** %12, align 8
  %64 = getelementptr inbounds %struct.zynqmp_clk_divider, %struct.zynqmp_clk_divider* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.zynqmp_clk_divider*, %struct.zynqmp_clk_divider** %12, align 8
  %66 = getelementptr inbounds %struct.zynqmp_clk_divider, %struct.zynqmp_clk_divider* %65, i32 0, i32 1
  store %struct.clk_hw* %66, %struct.clk_hw** %13, align 8
  %67 = load %struct.clk_hw*, %struct.clk_hw** %13, align 8
  %68 = call i32 @clk_hw_register(i32* null, %struct.clk_hw* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %24
  %72 = load %struct.zynqmp_clk_divider*, %struct.zynqmp_clk_divider** %12, align 8
  %73 = call i32 @kfree(%struct.zynqmp_clk_divider* %72)
  %74 = load i32, i32* %15, align 4
  %75 = call %struct.clk_hw* @ERR_PTR(i32 %74)
  store %struct.clk_hw* %75, %struct.clk_hw** %13, align 8
  br label %76

76:                                               ; preds = %71, %24
  %77 = load %struct.clk_hw*, %struct.clk_hw** %13, align 8
  store %struct.clk_hw* %77, %struct.clk_hw** %6, align 8
  br label %78

78:                                               ; preds = %76, %20
  %79 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  ret %struct.clk_hw* %79
}

declare dso_local %struct.zynqmp_clk_divider* @kzalloc(i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @clk_hw_register(i32*, %struct.clk_hw*) #1

declare dso_local i32 @kfree(%struct.zynqmp_clk_divider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
