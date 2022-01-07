; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_av_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_av_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pllv3 = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_pllv3_av_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pllv3_av_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_pllv3*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %18 = call %struct.clk_pllv3* @to_clk_pllv3(%struct.clk_hw* %17)
  store %struct.clk_pllv3* %18, %struct.clk_pllv3** %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = mul i64 %19, 27
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 %21, 54
  store i64 %22, i64* %10, align 8
  store i64 1000000, i64* %14, align 8
  store i64 1073741823, i64* %15, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %93

33:                                               ; preds = %26
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %15, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %14, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = udiv i64 %40, %41
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %7, align 8
  %46 = mul i64 %44, %45
  %47 = sub i64 %43, %46
  store i64 %47, i64* %16, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %16, align 8
  %50 = mul i64 %49, %48
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @do_div(i64 %51, i64 %52)
  %54 = load i64, i64* %16, align 8
  store i64 %54, i64* %13, align 8
  %55 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %56 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @readl_relaxed(i64 %57)
  store i64 %58, i64* %11, align 8
  %59 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %60 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = xor i64 %61, -1
  %63 = load i64, i64* %11, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %11, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %70 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @writel_relaxed(i64 %68, i64 %71)
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %75 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %78 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = call i32 @writel_relaxed(i64 %73, i64 %80)
  %82 = load i64, i64* %14, align 8
  %83 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %84 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %87 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = call i32 @writel_relaxed(i64 %82, i64 %89)
  %91 = load %struct.clk_pllv3*, %struct.clk_pllv3** %8, align 8
  %92 = call i32 @clk_pllv3_wait_lock(%struct.clk_pllv3* %91)
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %39, %30
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.clk_pllv3* @to_clk_pllv3(%struct.clk_hw*) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @clk_pllv3_wait_lock(%struct.clk_pllv3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
