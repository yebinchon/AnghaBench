; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-mod0.c_mmc_get_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-mod0.c_mmc_get_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk* }
%struct.clk = type { i32 }
%struct.mmc_phase = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @mmc_get_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_get_phase(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.mmc_phase*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %15 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %14, i32 0, i32 0
  %16 = load %struct.clk*, %struct.clk** %15, align 8
  store %struct.clk* %16, %struct.clk** %6, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %18 = call %struct.mmc_phase* @to_mmc_phase(%struct.clk_hw* %17)
  store %struct.mmc_phase* %18, %struct.mmc_phase** %7, align 8
  %19 = load %struct.mmc_phase*, %struct.mmc_phase** %7, align 8
  %20 = getelementptr inbounds %struct.mmc_phase, %struct.mmc_phase* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @readl(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.mmc_phase*, %struct.mmc_phase** %7, align 8
  %25 = getelementptr inbounds %struct.mmc_phase, %struct.mmc_phase* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %23, %26
  %28 = and i32 %27, 3
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i32 180, i32* %2, align 4
  br label %73

32:                                               ; preds = %1
  %33 = load %struct.clk*, %struct.clk** %6, align 8
  %34 = call %struct.clk* @clk_get_parent(%struct.clk* %33)
  store %struct.clk* %34, %struct.clk** %4, align 8
  %35 = load %struct.clk*, %struct.clk** %4, align 8
  %36 = icmp ne %struct.clk* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %73

40:                                               ; preds = %32
  %41 = load %struct.clk*, %struct.clk** %4, align 8
  %42 = call i32 @clk_get_rate(%struct.clk* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %73

48:                                               ; preds = %40
  %49 = load %struct.clk*, %struct.clk** %4, align 8
  %50 = call %struct.clk* @clk_get_parent(%struct.clk* %49)
  store %struct.clk* %50, %struct.clk** %5, align 8
  %51 = load %struct.clk*, %struct.clk** %5, align 8
  %52 = icmp ne %struct.clk* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %73

56:                                               ; preds = %48
  %57 = load %struct.clk*, %struct.clk** %5, align 8
  %58 = call i32 @clk_get_rate(%struct.clk* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %73

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = udiv i32 %65, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @DIV_ROUND_CLOSEST(i32 360, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %70, %71
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %64, %61, %53, %45, %37, %31
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.mmc_phase* @to_mmc_phase(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local %struct.clk* @clk_get_parent(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
