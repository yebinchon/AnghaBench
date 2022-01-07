; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_register_pll_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_register_pll_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i8*, i32, i32*, i32* }
%struct.bcm2835_cprman = type { i32, i32, i64 }
%struct.bcm2835_pll_divider_data = type { i32, i8*, i32, i64, i32 }
%struct.bcm2835_pll_divider = type { %struct.TYPE_2__, %struct.bcm2835_pll_divider_data*, %struct.bcm2835_cprman* }
%struct.TYPE_2__ = type { %struct.clk_hw, i32*, i32*, i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s_prediv\00", align 1
@bcm2835_pll_divider_clk_ops = common dso_local global i32 0, align 4
@CLK_IGNORE_UNUSED = common dso_local global i32 0, align 4
@A2W_PLL_DIV_SHIFT = common dso_local global i32 0, align 4
@A2W_PLL_DIV_BITS = common dso_local global i32 0, align 4
@CLK_DIVIDER_MAX_AT_ZERO = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.bcm2835_cprman*, %struct.bcm2835_pll_divider_data*)* @bcm2835_register_pll_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @bcm2835_register_pll_divider(%struct.bcm2835_cprman* %0, %struct.bcm2835_pll_divider_data* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.bcm2835_cprman*, align 8
  %5 = alloca %struct.bcm2835_pll_divider_data*, align 8
  %6 = alloca %struct.bcm2835_pll_divider*, align 8
  %7 = alloca %struct.clk_init_data, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.bcm2835_cprman* %0, %struct.bcm2835_cprman** %4, align 8
  store %struct.bcm2835_pll_divider_data* %1, %struct.bcm2835_pll_divider_data** %5, align 8
  %10 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %11 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %16 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %20 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @devm_kasprintf(i32 %17, i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  store %struct.clk_hw* null, %struct.clk_hw** %3, align 8
  br label %129

26:                                               ; preds = %14
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %29 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %8, align 8
  br label %31

31:                                               ; preds = %27, %26
  %32 = call i32 @memset(%struct.clk_init_data* %7, i32 0, i32 40)
  %33 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %34 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 4
  store i32* %34, i32** %35, align 8
  %36 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 3
  store i32* @bcm2835_pll_divider_clk_ops, i32** %39, align 8
  %40 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %41 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CLK_IGNORE_UNUSED, align 4
  %44 = or i32 %42, %43
  %45 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %47 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.bcm2835_pll_divider* @devm_kzalloc(i32 %48, i32 64, i32 %49)
  store %struct.bcm2835_pll_divider* %50, %struct.bcm2835_pll_divider** %6, align 8
  %51 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %6, align 8
  %52 = icmp ne %struct.bcm2835_pll_divider* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %31
  store %struct.clk_hw* null, %struct.clk_hw** %3, align 8
  br label %129

54:                                               ; preds = %31
  %55 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %56 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %59 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %6, align 8
  %63 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  store i64 %61, i64* %64, align 8
  %65 = load i32, i32* @A2W_PLL_DIV_SHIFT, align 4
  %66 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %6, align 8
  %67 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 5
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @A2W_PLL_DIV_BITS, align 4
  %70 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %6, align 8
  %71 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @CLK_DIVIDER_MAX_AT_ZERO, align 4
  %74 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %6, align 8
  %75 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 8
  %77 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %78 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %77, i32 0, i32 1
  %79 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %6, align 8
  %80 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32* %78, i32** %81, align 8
  %82 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %6, align 8
  %83 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %84, i32 0, i32 0
  store %struct.clk_init_data* %7, %struct.clk_init_data** %85, align 8
  %86 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %6, align 8
  %87 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  %89 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %90 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %6, align 8
  %91 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %90, i32 0, i32 2
  store %struct.bcm2835_cprman* %89, %struct.bcm2835_cprman** %91, align 8
  %92 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %93 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %6, align 8
  %94 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %93, i32 0, i32 1
  store %struct.bcm2835_pll_divider_data* %92, %struct.bcm2835_pll_divider_data** %94, align 8
  %95 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %96 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %6, align 8
  %99 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 @devm_clk_hw_register(i32 %97, %struct.clk_hw* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %54
  %105 = load i32, i32* %9, align 4
  %106 = call %struct.clk_hw* @ERR_PTR(i32 %105)
  store %struct.clk_hw* %106, %struct.clk_hw** %3, align 8
  br label %129

107:                                              ; preds = %54
  %108 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %109 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 1
  br i1 %111, label %112, label %125

112:                                              ; preds = %107
  %113 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %114 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %117 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %121 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %122 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call %struct.clk_hw* @clk_hw_register_fixed_factor(i32 %115, i8* %118, i8* %119, i32 %120, i32 1, i32 %123)
  store %struct.clk_hw* %124, %struct.clk_hw** %3, align 8
  br label %129

125:                                              ; preds = %107
  %126 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %6, align 8
  %127 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store %struct.clk_hw* %128, %struct.clk_hw** %3, align 8
  br label %129

129:                                              ; preds = %125, %112, %104, %53, %25
  %130 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  ret %struct.clk_hw* %130
}

declare dso_local i8* @devm_kasprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @memset(%struct.clk_init_data*, i32, i32) #1

declare dso_local %struct.bcm2835_pll_divider* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @devm_clk_hw_register(i32, %struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local %struct.clk_hw* @clk_hw_register_fixed_factor(i32, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
