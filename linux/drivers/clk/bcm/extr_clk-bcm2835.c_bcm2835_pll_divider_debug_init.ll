; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_pll_divider_debug_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_pll_divider_debug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.dentry = type { i32 }
%struct.bcm2835_pll_divider = type { %struct.bcm2835_pll_divider_data*, %struct.bcm2835_cprman* }
%struct.bcm2835_pll_divider_data = type { i32, i32 }
%struct.bcm2835_cprman = type { i32 }
%struct.debugfs_reg32 = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"a2w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*, %struct.dentry*)* @bcm2835_pll_divider_debug_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_pll_divider_debug_init(%struct.clk_hw* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.bcm2835_pll_divider*, align 8
  %6 = alloca %struct.bcm2835_cprman*, align 8
  %7 = alloca %struct.bcm2835_pll_divider_data*, align 8
  %8 = alloca %struct.debugfs_reg32*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.bcm2835_pll_divider* @bcm2835_pll_divider_from_hw(%struct.clk_hw* %9)
  store %struct.bcm2835_pll_divider* %10, %struct.bcm2835_pll_divider** %5, align 8
  %11 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %5, align 8
  %12 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %11, i32 0, i32 1
  %13 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %12, align 8
  store %struct.bcm2835_cprman* %13, %struct.bcm2835_cprman** %6, align 8
  %14 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %5, align 8
  %15 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %14, i32 0, i32 0
  %16 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %15, align 8
  store %struct.bcm2835_pll_divider_data* %16, %struct.bcm2835_pll_divider_data** %7, align 8
  %17 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %6, align 8
  %18 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.debugfs_reg32* @devm_kcalloc(i32 %19, i32 7, i32 16, i32 %20)
  store %struct.debugfs_reg32* %21, %struct.debugfs_reg32** %8, align 8
  %22 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %8, align 8
  %23 = icmp ne %struct.debugfs_reg32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %48

25:                                               ; preds = %2
  %26 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %8, align 8
  %27 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %26, i64 0
  %28 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  %29 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %7, align 8
  %30 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %8, align 8
  %33 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %32, i64 0
  %34 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %8, align 8
  %36 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %35, i64 1
  %37 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %37, align 8
  %38 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %7, align 8
  %39 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %8, align 8
  %42 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %41, i64 1
  %43 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %6, align 8
  %45 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %8, align 8
  %46 = load %struct.dentry*, %struct.dentry** %4, align 8
  %47 = call i32 @bcm2835_debugfs_regset(%struct.bcm2835_cprman* %44, i32 0, %struct.debugfs_reg32* %45, i32 2, %struct.dentry* %46)
  br label %48

48:                                               ; preds = %25, %24
  ret void
}

declare dso_local %struct.bcm2835_pll_divider* @bcm2835_pll_divider_from_hw(%struct.clk_hw*) #1

declare dso_local %struct.debugfs_reg32* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @bcm2835_debugfs_regset(%struct.bcm2835_cprman*, i32, %struct.debugfs_reg32*, i32, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
