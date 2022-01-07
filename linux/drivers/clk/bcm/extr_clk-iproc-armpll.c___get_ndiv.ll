; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-armpll.c___get_ndiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-armpll.c___get_ndiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_arm_pll = type { i64 }

@IPROC_CLK_PLLARM_OFFSET_OFFSET = common dso_local global i64 0, align 8
@IPROC_CLK_PLLARM_SW_CTL_SHIFT = common dso_local global i32 0, align 4
@IPROC_CLK_PLLARM_NDIV_INT_OFFSET_SHIFT = common dso_local global i32 0, align 4
@IPROC_CLK_PLLARM_NDIV_INT_OFFSET_MASK = common dso_local global i32 0, align 4
@IPROC_CLK_PLLARM_NDIV_FRAC_OFFSET_MASK = common dso_local global i32 0, align 4
@IPROC_CLK_PLLARMA_OFFSET = common dso_local global i64 0, align 8
@IPROC_CLK_PLLARMA_NDIV_INT_SHIFT = common dso_local global i32 0, align 4
@IPROC_CLK_PLLARMA_NDIV_INT_MASK = common dso_local global i32 0, align 4
@IPROC_CLK_PLLARMB_OFFSET = common dso_local global i64 0, align 8
@IPROC_CLK_PLLARMB_NDIV_FRAC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_arm_pll*)* @__get_ndiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_ndiv(%struct.iproc_arm_pll* %0) #0 {
  %2 = alloca %struct.iproc_arm_pll*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iproc_arm_pll* %0, %struct.iproc_arm_pll** %2, align 8
  %7 = load %struct.iproc_arm_pll*, %struct.iproc_arm_pll** %2, align 8
  %8 = getelementptr inbounds %struct.iproc_arm_pll, %struct.iproc_arm_pll* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IPROC_CLK_PLLARM_OFFSET_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IPROC_CLK_PLLARM_SW_CTL_SHIFT, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @IPROC_CLK_PLLARM_NDIV_INT_OFFSET_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = load i32, i32* @IPROC_CLK_PLLARM_NDIV_INT_OFFSET_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 256, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %18
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @IPROC_CLK_PLLARM_NDIV_FRAC_OFFSET_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %5, align 4
  br label %56

31:                                               ; preds = %1
  %32 = load %struct.iproc_arm_pll*, %struct.iproc_arm_pll** %2, align 8
  %33 = getelementptr inbounds %struct.iproc_arm_pll, %struct.iproc_arm_pll* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IPROC_CLK_PLLARMA_OFFSET, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @IPROC_CLK_PLLARMA_NDIV_INT_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = load i32, i32* @IPROC_CLK_PLLARMA_NDIV_INT_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  store i32 1024, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.iproc_arm_pll*, %struct.iproc_arm_pll** %2, align 8
  %48 = getelementptr inbounds %struct.iproc_arm_pll, %struct.iproc_arm_pll* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IPROC_CLK_PLLARMB_OFFSET, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @IPROC_CLK_PLLARMB_NDIV_FRAC_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %46, %27
  %57 = load i32, i32* %4, align 4
  %58 = shl i32 %57, 20
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
