; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-armpll.c___get_mdiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-armpll.c___get_mdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_arm_pll = type { i64 }

@IPROC_CLK_PLLARMC_OFFSET = common dso_local global i64 0, align 8
@IPROC_CLK_PLLARMC_MDIV_MASK = common dso_local global i32 0, align 4
@IPROC_CLK_PLLARMCTL5_OFFSET = common dso_local global i64 0, align 8
@IPROC_CLK_PLLARMCTL5_H_MDIV_MASK = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_arm_pll*)* @__get_mdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_mdiv(%struct.iproc_arm_pll* %0) #0 {
  %2 = alloca %struct.iproc_arm_pll*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iproc_arm_pll* %0, %struct.iproc_arm_pll** %2, align 8
  %6 = load %struct.iproc_arm_pll*, %struct.iproc_arm_pll** %2, align 8
  %7 = call i32 @__get_fid(%struct.iproc_arm_pll* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %38 [
    i32 129, label %9
    i32 128, label %9
    i32 131, label %10
    i32 130, label %24
  ]

9:                                                ; preds = %1, %1
  store i32 1, i32* %4, align 4
  br label %41

10:                                               ; preds = %1
  %11 = load %struct.iproc_arm_pll*, %struct.iproc_arm_pll** %2, align 8
  %12 = getelementptr inbounds %struct.iproc_arm_pll, %struct.iproc_arm_pll* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IPROC_CLK_PLLARMC_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IPROC_CLK_PLLARMC_MDIV_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  store i32 256, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %10
  br label %41

24:                                               ; preds = %1
  %25 = load %struct.iproc_arm_pll*, %struct.iproc_arm_pll** %2, align 8
  %26 = getelementptr inbounds %struct.iproc_arm_pll, %struct.iproc_arm_pll* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IPROC_CLK_PLLARMCTL5_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @IPROC_CLK_PLLARMCTL5_H_MDIV_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 256, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %24
  br label %41

38:                                               ; preds = %1
  %39 = load i32, i32* @EFAULT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %37, %23, %9
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @__get_fid(%struct.iproc_arm_pll*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
