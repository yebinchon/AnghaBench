; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sprd/extr_pll.c_sprd_pll_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sprd/extr_pll.c_sprd_pll_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_pll = type { i32, %struct.sprd_clk_common }
%struct.sprd_clk_common = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_pll*, i32)* @sprd_pll_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pll_read(%struct.sprd_pll* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sprd_pll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sprd_clk_common*, align 8
  %7 = alloca i32, align 4
  store %struct.sprd_pll* %0, %struct.sprd_pll** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %9 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %8, i32 0, i32 1
  store %struct.sprd_clk_common* %9, %struct.sprd_clk_common** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %12 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.sprd_clk_common*, %struct.sprd_clk_common** %6, align 8
  %21 = getelementptr inbounds %struct.sprd_clk_common, %struct.sprd_clk_common* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sprd_clk_common*, %struct.sprd_clk_common** %6, align 8
  %24 = getelementptr inbounds %struct.sprd_clk_common, %struct.sprd_clk_common* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = call i32 @regmap_read(i32 %22, i64 %29, i32* %7)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %19, %18
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
