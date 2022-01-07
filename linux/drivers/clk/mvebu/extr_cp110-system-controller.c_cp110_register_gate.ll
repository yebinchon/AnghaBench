; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_cp110-system-controller.c_cp110_register_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_cp110-system-controller.c_cp110_register_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i32* }
%struct.regmap = type { i32 }
%struct.cp110_gate_clk = type { %struct.clk_hw, i32, %struct.regmap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cp110_gate_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (i8*, i8*, %struct.regmap*, i32)* @cp110_register_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @cp110_register_gate(i8* %0, i8* %1, %struct.regmap* %2, i32 %3) #0 {
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cp110_gate_clk*, align 8
  %11 = alloca %struct.clk_hw*, align 8
  %12 = alloca %struct.clk_init_data, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.regmap* %2, %struct.regmap** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.cp110_gate_clk* @kzalloc(i32 24, i32 %14)
  store %struct.cp110_gate_clk* %15, %struct.cp110_gate_clk** %10, align 8
  %16 = load %struct.cp110_gate_clk*, %struct.cp110_gate_clk** %10, align 8
  %17 = icmp ne %struct.cp110_gate_clk* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.clk_hw* @ERR_PTR(i32 %20)
  store %struct.clk_hw* %21, %struct.clk_hw** %5, align 8
  br label %51

22:                                               ; preds = %4
  %23 = call i32 @memset(%struct.clk_init_data* %12, i32 0, i32 32)
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 3
  store i32* @cp110_gate_ops, i32** %26, align 8
  %27 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 1
  store i8** %7, i8*** %27, align 8
  %28 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %12, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = load %struct.regmap*, %struct.regmap** %8, align 8
  %30 = load %struct.cp110_gate_clk*, %struct.cp110_gate_clk** %10, align 8
  %31 = getelementptr inbounds %struct.cp110_gate_clk, %struct.cp110_gate_clk* %30, i32 0, i32 2
  store %struct.regmap* %29, %struct.regmap** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.cp110_gate_clk*, %struct.cp110_gate_clk** %10, align 8
  %34 = getelementptr inbounds %struct.cp110_gate_clk, %struct.cp110_gate_clk* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.cp110_gate_clk*, %struct.cp110_gate_clk** %10, align 8
  %36 = getelementptr inbounds %struct.cp110_gate_clk, %struct.cp110_gate_clk* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %36, i32 0, i32 0
  store %struct.clk_init_data* %12, %struct.clk_init_data** %37, align 8
  %38 = load %struct.cp110_gate_clk*, %struct.cp110_gate_clk** %10, align 8
  %39 = getelementptr inbounds %struct.cp110_gate_clk, %struct.cp110_gate_clk* %38, i32 0, i32 0
  store %struct.clk_hw* %39, %struct.clk_hw** %11, align 8
  %40 = load %struct.clk_hw*, %struct.clk_hw** %11, align 8
  %41 = call i32 @clk_hw_register(i32* null, %struct.clk_hw* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %22
  %45 = load %struct.cp110_gate_clk*, %struct.cp110_gate_clk** %10, align 8
  %46 = call i32 @kfree(%struct.cp110_gate_clk* %45)
  %47 = load i32, i32* %13, align 4
  %48 = call %struct.clk_hw* @ERR_PTR(i32 %47)
  store %struct.clk_hw* %48, %struct.clk_hw** %11, align 8
  br label %49

49:                                               ; preds = %44, %22
  %50 = load %struct.clk_hw*, %struct.clk_hw** %11, align 8
  store %struct.clk_hw* %50, %struct.clk_hw** %5, align 8
  br label %51

51:                                               ; preds = %49, %18
  %52 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  ret %struct.clk_hw* %52
}

declare dso_local %struct.cp110_gate_clk* @kzalloc(i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.clk_init_data*, i32, i32) #1

declare dso_local i32 @clk_hw_register(i32*, %struct.clk_hw*) #1

declare dso_local i32 @kfree(%struct.cp110_gate_clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
