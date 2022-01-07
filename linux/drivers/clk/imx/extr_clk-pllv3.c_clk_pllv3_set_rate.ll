; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pllv3 = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_pllv3_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pllv3_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_pllv3*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.clk_pllv3* @to_clk_pllv3(%struct.clk_hw* %11)
  store %struct.clk_pllv3* %12, %struct.clk_pllv3** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = mul i64 %14, 22
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %28

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = mul i64 %20, 20
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %57

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %17
  %29 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %30 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @readl_relaxed(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %34 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %37 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %35, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %45 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %43, %46
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %52 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @writel_relaxed(i32 %50, i32 %53)
  %55 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %56 = call i32 @clk_pllv3_wait_lock(%struct.clk_pllv3* %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %28, %24
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.clk_pllv3* @to_clk_pllv3(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @clk_pllv3_wait_lock(%struct.clk_pllv3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
