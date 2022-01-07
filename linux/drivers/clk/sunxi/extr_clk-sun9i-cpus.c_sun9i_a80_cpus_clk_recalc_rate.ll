; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun9i-cpus.c_sun9i_a80_cpus_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun9i-cpus.c_sun9i_a80_cpus_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.sun9i_a80_cpus_clk = type { i32 }

@SUN9I_CPUS_MUX_PARENT_PLL4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @sun9i_a80_cpus_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun9i_a80_cpus_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sun9i_a80_cpus_clk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.sun9i_a80_cpus_clk* @to_sun9i_a80_cpus_clk(%struct.clk_hw* %8)
  store %struct.sun9i_a80_cpus_clk* %9, %struct.sun9i_a80_cpus_clk** %5, align 8
  %10 = load %struct.sun9i_a80_cpus_clk*, %struct.sun9i_a80_cpus_clk** %5, align 8
  %11 = getelementptr inbounds %struct.sun9i_a80_cpus_clk, %struct.sun9i_a80_cpus_clk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @readl(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @SUN9I_CPUS_MUX_GET_PARENT(i32 %14)
  %16 = load i64, i64* @SUN9I_CPUS_MUX_PARENT_PLL4, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @SUN9I_CPUS_PLL4_DIV_GET(i32 %19)
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %4, align 8
  %24 = udiv i64 %23, %22
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @SUN9I_CPUS_DIV_GET(i32 %27)
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %26, %30
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  ret i64 %32
}

declare dso_local %struct.sun9i_a80_cpus_clk* @to_sun9i_a80_cpus_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @SUN9I_CPUS_MUX_GET_PARENT(i32) #1

declare dso_local i32 @SUN9I_CPUS_PLL4_DIV_GET(i32) #1

declare dso_local i32 @SUN9I_CPUS_DIV_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
