; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-branch.c_clk_branch_in_hwcg_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-branch.c_clk_branch_in_hwcg_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_branch = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_branch*)* @clk_branch_in_hwcg_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_branch_in_hwcg_mode(%struct.clk_branch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_branch*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_branch* %0, %struct.clk_branch** %3, align 8
  %5 = load %struct.clk_branch*, %struct.clk_branch** %3, align 8
  %6 = getelementptr inbounds %struct.clk_branch, %struct.clk_branch* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.clk_branch*, %struct.clk_branch** %3, align 8
  %12 = getelementptr inbounds %struct.clk_branch, %struct.clk_branch* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.clk_branch*, %struct.clk_branch** %3, align 8
  %16 = getelementptr inbounds %struct.clk_branch, %struct.clk_branch* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regmap_read(i32 %14, i32 %17, i32* %4)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.clk_branch*, %struct.clk_branch** %3, align 8
  %21 = getelementptr inbounds %struct.clk_branch, %struct.clk_branch* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = and i32 %19, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %10, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
