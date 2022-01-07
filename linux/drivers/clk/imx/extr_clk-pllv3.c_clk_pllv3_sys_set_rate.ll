; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_sys_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_sys_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pllv3 = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_pllv3_sys_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pllv3_sys_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_pllv3*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.clk_pllv3* @to_clk_pllv3(%struct.clk_hw* %13)
  store %struct.clk_pllv3* %14, %struct.clk_pllv3** %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = mul i64 %15, 54
  %17 = udiv i64 %16, 2
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = mul i64 %18, 108
  %20 = udiv i64 %19, 2
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %56

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = mul i64 %32, 2
  %34 = load i64, i64* %7, align 8
  %35 = udiv i64 %33, %34
  store i64 %35, i64* %12, align 8
  %36 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %37 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @readl_relaxed(i32 %38)
  store i64 %39, i64* %11, align 8
  %40 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %41 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = xor i64 %42, -1
  %44 = load i64, i64* %11, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %11, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %51 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @writel_relaxed(i64 %49, i32 %52)
  %54 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %55 = call i32 @clk_pllv3_wait_lock(%struct.clk_pllv3* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %31, %28
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.clk_pllv3* @to_clk_pllv3(%struct.clk_hw*) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i32 @clk_pllv3_wait_lock(%struct.clk_pllv3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
