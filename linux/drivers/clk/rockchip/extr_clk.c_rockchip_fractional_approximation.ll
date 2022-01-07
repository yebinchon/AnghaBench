; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk.c_rockchip_fractional_approximation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk.c_rockchip_fractional_approximation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_fractional_divider = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*, i64, i64*, i64*, i64*)* @rockchip_fractional_approximation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_fractional_approximation(%struct.clk_hw* %0, i64 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.clk_fractional_divider*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.clk_hw*, align 8
  %15 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %17 = call %struct.clk_fractional_divider* @to_clk_fd(%struct.clk_hw* %16)
  store %struct.clk_fractional_divider* %17, %struct.clk_fractional_divider** %11, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %19 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %18)
  %20 = call i64 @clk_hw_get_rate(%struct.clk_hw* %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 %21, 20
  %23 = load i64, i64* %12, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %5
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %7, align 8
  %28 = urem i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %32 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %31)
  %33 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %32)
  store %struct.clk_hw* %33, %struct.clk_hw** %14, align 8
  %34 = load %struct.clk_hw*, %struct.clk_hw** %14, align 8
  %35 = call i64 @clk_hw_get_rate(%struct.clk_hw* %34)
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i64*, i64** %8, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %30, %25, %5
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = udiv i64 %40, %41
  %43 = sub i64 %42, 1
  %44 = call i64 @fls_long(i64 %43)
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %11, align 8
  %47 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %45, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %38
  %51 = load i64, i64* %15, align 8
  %52 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %11, align 8
  %53 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %51, %54
  %56 = load i64, i64* %7, align 8
  %57 = shl i64 %56, %55
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %50, %38
  %59 = load i64, i64* %7, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %11, align 8
  %63 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @GENMASK(i32 %65, i32 0)
  %67 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %11, align 8
  %68 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %69, 1
  %71 = trunc i64 %70 to i32
  %72 = call i32 @GENMASK(i32 %71, i32 0)
  %73 = load i64*, i64** %9, align 8
  %74 = load i64*, i64** %10, align 8
  %75 = call i32 @rational_best_approximation(i64 %59, i64 %61, i32 %66, i32 %72, i64* %73, i64* %74)
  ret void
}

declare dso_local %struct.clk_fractional_divider* @to_clk_fd(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i64 @fls_long(i64) #1

declare dso_local i32 @rational_best_approximation(i64, i64, i32, i32, i64*, i64*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
