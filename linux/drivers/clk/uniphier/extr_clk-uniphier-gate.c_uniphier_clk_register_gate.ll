; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-gate.c_uniphier_clk_register_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-gate.c_uniphier_clk_register_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i32, i64*, i32, i32* }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.uniphier_clk_gate_data = type { i32, i32, i64 }
%struct.uniphier_clk_gate = type { %struct.clk_hw, i32, i32, %struct.regmap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uniphier_clk_gate_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_hw* @uniphier_clk_register_gate(%struct.device* %0, %struct.regmap* %1, i8* %2, %struct.uniphier_clk_gate_data* %3) #0 {
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.uniphier_clk_gate_data*, align 8
  %10 = alloca %struct.uniphier_clk_gate*, align 8
  %11 = alloca %struct.clk_init_data, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.uniphier_clk_gate_data* %3, %struct.uniphier_clk_gate_data** %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.uniphier_clk_gate* @devm_kzalloc(%struct.device* %13, i32 24, i32 %14)
  store %struct.uniphier_clk_gate* %15, %struct.uniphier_clk_gate** %10, align 8
  %16 = load %struct.uniphier_clk_gate*, %struct.uniphier_clk_gate** %10, align 8
  %17 = icmp ne %struct.uniphier_clk_gate* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.clk_hw* @ERR_PTR(i32 %20)
  store %struct.clk_hw* %21, %struct.clk_hw** %5, align 8
  br label %82

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 4
  store i32* @uniphier_clk_gate_ops, i32** %25, align 8
  %26 = load %struct.uniphier_clk_gate_data*, %struct.uniphier_clk_gate_data** %9, align 8
  %27 = getelementptr inbounds %struct.uniphier_clk_gate_data, %struct.uniphier_clk_gate_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  br label %33

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = load %struct.uniphier_clk_gate_data*, %struct.uniphier_clk_gate_data** %9, align 8
  %37 = getelementptr inbounds %struct.uniphier_clk_gate_data, %struct.uniphier_clk_gate_data* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.uniphier_clk_gate_data*, %struct.uniphier_clk_gate_data** %9, align 8
  %42 = getelementptr inbounds %struct.uniphier_clk_gate_data, %struct.uniphier_clk_gate_data* %41, i32 0, i32 2
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i64* [ %42, %40 ], [ null, %43 ]
  %46 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 2
  store i64* %45, i64** %46, align 8
  %47 = load %struct.uniphier_clk_gate_data*, %struct.uniphier_clk_gate_data** %9, align 8
  %48 = getelementptr inbounds %struct.uniphier_clk_gate_data, %struct.uniphier_clk_gate_data* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = load %struct.regmap*, %struct.regmap** %7, align 8
  %55 = load %struct.uniphier_clk_gate*, %struct.uniphier_clk_gate** %10, align 8
  %56 = getelementptr inbounds %struct.uniphier_clk_gate, %struct.uniphier_clk_gate* %55, i32 0, i32 3
  store %struct.regmap* %54, %struct.regmap** %56, align 8
  %57 = load %struct.uniphier_clk_gate_data*, %struct.uniphier_clk_gate_data** %9, align 8
  %58 = getelementptr inbounds %struct.uniphier_clk_gate_data, %struct.uniphier_clk_gate_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.uniphier_clk_gate*, %struct.uniphier_clk_gate** %10, align 8
  %61 = getelementptr inbounds %struct.uniphier_clk_gate, %struct.uniphier_clk_gate* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.uniphier_clk_gate_data*, %struct.uniphier_clk_gate_data** %9, align 8
  %63 = getelementptr inbounds %struct.uniphier_clk_gate_data, %struct.uniphier_clk_gate_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.uniphier_clk_gate*, %struct.uniphier_clk_gate** %10, align 8
  %66 = getelementptr inbounds %struct.uniphier_clk_gate, %struct.uniphier_clk_gate* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.uniphier_clk_gate*, %struct.uniphier_clk_gate** %10, align 8
  %68 = getelementptr inbounds %struct.uniphier_clk_gate, %struct.uniphier_clk_gate* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %68, i32 0, i32 0
  store %struct.clk_init_data* %11, %struct.clk_init_data** %69, align 8
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = load %struct.uniphier_clk_gate*, %struct.uniphier_clk_gate** %10, align 8
  %72 = getelementptr inbounds %struct.uniphier_clk_gate, %struct.uniphier_clk_gate* %71, i32 0, i32 0
  %73 = call i32 @devm_clk_hw_register(%struct.device* %70, %struct.clk_hw* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %44
  %77 = load i32, i32* %12, align 4
  %78 = call %struct.clk_hw* @ERR_PTR(i32 %77)
  store %struct.clk_hw* %78, %struct.clk_hw** %5, align 8
  br label %82

79:                                               ; preds = %44
  %80 = load %struct.uniphier_clk_gate*, %struct.uniphier_clk_gate** %10, align 8
  %81 = getelementptr inbounds %struct.uniphier_clk_gate, %struct.uniphier_clk_gate* %80, i32 0, i32 0
  store %struct.clk_hw* %81, %struct.clk_hw** %5, align 8
  br label %82

82:                                               ; preds = %79, %76, %18
  %83 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  ret %struct.clk_hw* %83
}

declare dso_local %struct.uniphier_clk_gate* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
