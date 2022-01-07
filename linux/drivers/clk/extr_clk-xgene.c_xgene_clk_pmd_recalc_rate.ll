; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-xgene.c_xgene_clk_pmd_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-xgene.c_xgene_clk_pmd_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.xgene_clk_pmd = type { i64, i64, i32, i64, i64, i32 }

@XGENE_CLK_PMD_SCALE_INVERTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @xgene_clk_pmd_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xgene_clk_pmd_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xgene_clk_pmd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.xgene_clk_pmd* @to_xgene_clk_pmd(%struct.clk_hw* %10)
  store %struct.xgene_clk_pmd* %11, %struct.xgene_clk_pmd** %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %5, align 8
  %13 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %5, align 8
  %18 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i64 %19, i64 %20)
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %5, align 8
  %24 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @__acquire(i64 %25)
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %5, align 8
  %29 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @readl(i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %5, align 8
  %33 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %5, align 8
  %38 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i64 %39, i64 %40)
  br label %47

42:                                               ; preds = %27
  %43 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %5, align 8
  %44 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @__release(i64 %45)
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %5, align 8
  %51 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = and i64 %49, %52
  %54 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %5, align 8
  %55 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = lshr i64 %53, %56
  store i64 %57, i64* %8, align 8
  %58 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %5, align 8
  %59 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @XGENE_CLK_PMD_SCALE_INVERTED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %47
  %65 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %5, align 8
  %66 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = sub i64 %67, %68
  store i64 %69, i64* %8, align 8
  br label %73

70:                                               ; preds = %47
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %70, %64
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %5, align 8
  %76 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @do_div(i64 %74, i64 %77)
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %7, align 8
  %81 = mul i64 %80, %79
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i64, i64* %4, align 8
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %84, %73
  %87 = load i64, i64* %7, align 8
  ret i64 %87
}

declare dso_local %struct.xgene_clk_pmd* @to_xgene_clk_pmd(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @__acquire(i64) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @__release(i64) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
