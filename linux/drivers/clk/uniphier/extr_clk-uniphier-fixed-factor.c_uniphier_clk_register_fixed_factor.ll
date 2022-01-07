; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-fixed-factor.c_uniphier_clk_register_fixed_factor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-fixed-factor.c_uniphier_clk_register_fixed_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i32, i64*, i32, i32* }
%struct.device = type { i32 }
%struct.uniphier_clk_fixed_factor_data = type { i32, i32, i64 }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_fixed_factor_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_hw* @uniphier_clk_register_fixed_factor(%struct.device* %0, i8* %1, %struct.uniphier_clk_fixed_factor_data* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uniphier_clk_fixed_factor_data*, align 8
  %8 = alloca %struct.clk_fixed_factor*, align 8
  %9 = alloca %struct.clk_init_data, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.uniphier_clk_fixed_factor_data* %2, %struct.uniphier_clk_fixed_factor_data** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.clk_fixed_factor* @devm_kzalloc(%struct.device* %11, i32 16, i32 %12)
  store %struct.clk_fixed_factor* %13, %struct.clk_fixed_factor** %8, align 8
  %14 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %8, align 8
  %15 = icmp ne %struct.clk_fixed_factor* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.clk_hw* @ERR_PTR(i32 %18)
  store %struct.clk_hw* %19, %struct.clk_hw** %4, align 8
  br label %77

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  store i32* @clk_fixed_factor_ops, i32** %23, align 8
  %24 = load %struct.uniphier_clk_fixed_factor_data*, %struct.uniphier_clk_fixed_factor_data** %7, align 8
  %25 = getelementptr inbounds %struct.uniphier_clk_fixed_factor_data, %struct.uniphier_clk_fixed_factor_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i32 %32, i32* %33, align 8
  %34 = load %struct.uniphier_clk_fixed_factor_data*, %struct.uniphier_clk_fixed_factor_data** %7, align 8
  %35 = getelementptr inbounds %struct.uniphier_clk_fixed_factor_data, %struct.uniphier_clk_fixed_factor_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.uniphier_clk_fixed_factor_data*, %struct.uniphier_clk_fixed_factor_data** %7, align 8
  %40 = getelementptr inbounds %struct.uniphier_clk_fixed_factor_data, %struct.uniphier_clk_fixed_factor_data* %39, i32 0, i32 2
  br label %42

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i64* [ %40, %38 ], [ null, %41 ]
  %44 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i64* %43, i64** %44, align 8
  %45 = load %struct.uniphier_clk_fixed_factor_data*, %struct.uniphier_clk_fixed_factor_data** %7, align 8
  %46 = getelementptr inbounds %struct.uniphier_clk_fixed_factor_data, %struct.uniphier_clk_fixed_factor_data* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load %struct.uniphier_clk_fixed_factor_data*, %struct.uniphier_clk_fixed_factor_data** %7, align 8
  %53 = getelementptr inbounds %struct.uniphier_clk_fixed_factor_data, %struct.uniphier_clk_fixed_factor_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %8, align 8
  %56 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.uniphier_clk_fixed_factor_data*, %struct.uniphier_clk_fixed_factor_data** %7, align 8
  %58 = getelementptr inbounds %struct.uniphier_clk_fixed_factor_data, %struct.uniphier_clk_fixed_factor_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %8, align 8
  %61 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %8, align 8
  %63 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %63, i32 0, i32 0
  store %struct.clk_init_data* %9, %struct.clk_init_data** %64, align 8
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %8, align 8
  %67 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %66, i32 0, i32 0
  %68 = call i32 @devm_clk_hw_register(%struct.device* %65, %struct.clk_hw* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %42
  %72 = load i32, i32* %10, align 4
  %73 = call %struct.clk_hw* @ERR_PTR(i32 %72)
  store %struct.clk_hw* %73, %struct.clk_hw** %4, align 8
  br label %77

74:                                               ; preds = %42
  %75 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %8, align 8
  %76 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %75, i32 0, i32 0
  store %struct.clk_hw* %76, %struct.clk_hw** %4, align 8
  br label %77

77:                                               ; preds = %74, %71, %16
  %78 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  ret %struct.clk_hw* %78
}

declare dso_local %struct.clk_fixed_factor* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
