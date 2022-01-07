; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_clock-sh4-202.c_shoc_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_clock-sh4-202.c_shoc_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CPG2_FRQCR3 = common dso_local global i32 0, align 4
@frqcr3_divisors = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @shoc_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shoc_clk_set_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk*, %struct.clk** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @shoc_clk_verify_rate(%struct.clk* %8, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.clk*, %struct.clk** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @frqcr3_lookup(%struct.clk* %16, i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @CPG2_FRQCR3, align 4
  %20 = call i64 @__raw_readl(i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = and i64 %21, -449
  store i64 %22, i64* %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 6
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* %6, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* @CPG2_FRQCR3, align 4
  %30 = call i32 @__raw_writel(i64 %28, i32 %29)
  %31 = load %struct.clk*, %struct.clk** %4, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** @frqcr3_divisors, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %35, %40
  %42 = load %struct.clk*, %struct.clk** %4, align 8
  %43 = getelementptr inbounds %struct.clk, %struct.clk* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %15, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @shoc_clk_verify_rate(%struct.clk*, i64) #1

declare dso_local i32 @frqcr3_lookup(%struct.clk*, i64) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
