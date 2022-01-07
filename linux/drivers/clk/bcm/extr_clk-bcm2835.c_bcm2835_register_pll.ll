; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_register_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_register_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i32, i32*, i32, i32* }
%struct.bcm2835_cprman = type { i32, i32* }
%struct.bcm2835_pll_data = type { i32 }
%struct.bcm2835_pll = type { %struct.clk_hw, %struct.bcm2835_pll_data*, %struct.bcm2835_cprman* }

@bcm2835_pll_clk_ops = common dso_local global i32 0, align 4
@CLK_IGNORE_UNUSED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.bcm2835_cprman*, %struct.bcm2835_pll_data*)* @bcm2835_register_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @bcm2835_register_pll(%struct.bcm2835_cprman* %0, %struct.bcm2835_pll_data* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.bcm2835_cprman*, align 8
  %5 = alloca %struct.bcm2835_pll_data*, align 8
  %6 = alloca %struct.bcm2835_pll*, align 8
  %7 = alloca %struct.clk_init_data, align 8
  %8 = alloca i32, align 4
  store %struct.bcm2835_cprman* %0, %struct.bcm2835_cprman** %4, align 8
  store %struct.bcm2835_pll_data* %1, %struct.bcm2835_pll_data** %5, align 8
  %9 = call i32 @memset(%struct.clk_init_data* %7, i32 0, i32 32)
  %10 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %11 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 4
  store i32* %13, i32** %14, align 8
  %15 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.bcm2835_pll_data*, %struct.bcm2835_pll_data** %5, align 8
  %17 = getelementptr inbounds %struct.bcm2835_pll_data, %struct.bcm2835_pll_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  store i32* @bcm2835_pll_clk_ops, i32** %20, align 8
  %21 = load i32, i32* @CLK_IGNORE_UNUSED, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.bcm2835_pll* @kzalloc(i32 24, i32 %23)
  store %struct.bcm2835_pll* %24, %struct.bcm2835_pll** %6, align 8
  %25 = load %struct.bcm2835_pll*, %struct.bcm2835_pll** %6, align 8
  %26 = icmp ne %struct.bcm2835_pll* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store %struct.clk_hw* null, %struct.clk_hw** %3, align 8
  br label %50

28:                                               ; preds = %2
  %29 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %30 = load %struct.bcm2835_pll*, %struct.bcm2835_pll** %6, align 8
  %31 = getelementptr inbounds %struct.bcm2835_pll, %struct.bcm2835_pll* %30, i32 0, i32 2
  store %struct.bcm2835_cprman* %29, %struct.bcm2835_cprman** %31, align 8
  %32 = load %struct.bcm2835_pll_data*, %struct.bcm2835_pll_data** %5, align 8
  %33 = load %struct.bcm2835_pll*, %struct.bcm2835_pll** %6, align 8
  %34 = getelementptr inbounds %struct.bcm2835_pll, %struct.bcm2835_pll* %33, i32 0, i32 1
  store %struct.bcm2835_pll_data* %32, %struct.bcm2835_pll_data** %34, align 8
  %35 = load %struct.bcm2835_pll*, %struct.bcm2835_pll** %6, align 8
  %36 = getelementptr inbounds %struct.bcm2835_pll, %struct.bcm2835_pll* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %36, i32 0, i32 0
  store %struct.clk_init_data* %7, %struct.clk_init_data** %37, align 8
  %38 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %39 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.bcm2835_pll*, %struct.bcm2835_pll** %6, align 8
  %42 = getelementptr inbounds %struct.bcm2835_pll, %struct.bcm2835_pll* %41, i32 0, i32 0
  %43 = call i32 @devm_clk_hw_register(i32 %40, %struct.clk_hw* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %28
  store %struct.clk_hw* null, %struct.clk_hw** %3, align 8
  br label %50

47:                                               ; preds = %28
  %48 = load %struct.bcm2835_pll*, %struct.bcm2835_pll** %6, align 8
  %49 = getelementptr inbounds %struct.bcm2835_pll, %struct.bcm2835_pll* %48, i32 0, i32 0
  store %struct.clk_hw* %49, %struct.clk_hw** %3, align 8
  br label %50

50:                                               ; preds = %47, %46, %27
  %51 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  ret %struct.clk_hw* %51
}

declare dso_local i32 @memset(%struct.clk_init_data*, i32, i32) #1

declare dso_local %struct.bcm2835_pll* @kzalloc(i32, i32) #1

declare dso_local i32 @devm_clk_hw_register(i32, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
