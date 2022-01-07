; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-xgene.c_xgene_clk_pmd_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-xgene.c_xgene_clk_pmd_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.xgene_clk_pmd = type { i64, i32, i32, i32, i64, i32 }

@XGENE_CLK_PMD_SCALE_INVERTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @xgene_clk_pmd_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_clk_pmd_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xgene_clk_pmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.xgene_clk_pmd* @to_xgene_clk_pmd(%struct.clk_hw* %12)
  store %struct.xgene_clk_pmd* %13, %struct.xgene_clk_pmd** %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %7, align 8
  %16 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = mul i64 %14, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @DIV_ROUND_UP_ULL(i32 %20, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %7, align 8
  %25 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @XGENE_CLK_PMD_SCALE_INVERTED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %7, align 8
  %32 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %33, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  br label %41

38:                                               ; preds = %3
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %7, align 8
  %43 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %7, align 8
  %48 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @spin_lock_irqsave(i64 %49, i64 %50)
  br label %57

52:                                               ; preds = %41
  %53 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %7, align 8
  %54 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @__acquire(i64 %55)
  br label %57

57:                                               ; preds = %52, %46
  %58 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %7, align 8
  %59 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @readl(i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %7, align 8
  %63 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %7, align 8
  %70 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = shl i32 %68, %71
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %7, align 8
  %77 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @writel(i32 %75, i32 %78)
  %80 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %7, align 8
  %81 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %57
  %85 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %7, align 8
  %86 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @spin_unlock_irqrestore(i64 %87, i64 %88)
  br label %95

90:                                               ; preds = %57
  %91 = load %struct.xgene_clk_pmd*, %struct.xgene_clk_pmd** %7, align 8
  %92 = getelementptr inbounds %struct.xgene_clk_pmd, %struct.xgene_clk_pmd* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @__release(i64 %93)
  br label %95

95:                                               ; preds = %90, %84
  ret i32 0
}

declare dso_local %struct.xgene_clk_pmd* @to_xgene_clk_pmd(%struct.clk_hw*) #1

declare dso_local i32 @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @__acquire(i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @__release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
