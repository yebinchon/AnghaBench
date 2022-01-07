; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-factors.c_clk_factors_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-factors.c_clk_factors_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.factors_request = type { i64, i64, i32, i32, i32, i32 }
%struct.clk_factors = type { i64, i32, i32 (%struct.factors_request*)*, %struct.clk_factors_config* }
%struct.clk_factors_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_factors_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_factors_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.factors_request, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk_factors*, align 8
  %10 = alloca %struct.clk_factors_config*, align 8
  %11 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %7, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %7, i32 0, i32 1
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %7, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %7, i32 0, i32 3
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %7, i32 0, i32 4
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %7, i32 0, i32 5
  store i32 0, i32* %19, align 4
  %20 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %21 = call %struct.clk_factors* @to_clk_factors(%struct.clk_hw* %20)
  store %struct.clk_factors* %21, %struct.clk_factors** %9, align 8
  %22 = load %struct.clk_factors*, %struct.clk_factors** %9, align 8
  %23 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %22, i32 0, i32 3
  %24 = load %struct.clk_factors_config*, %struct.clk_factors_config** %23, align 8
  store %struct.clk_factors_config* %24, %struct.clk_factors_config** %10, align 8
  store i64 0, i64* %11, align 8
  %25 = load %struct.clk_factors*, %struct.clk_factors** %9, align 8
  %26 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %25, i32 0, i32 2
  %27 = load i32 (%struct.factors_request*)*, i32 (%struct.factors_request*)** %26, align 8
  %28 = call i32 %27(%struct.factors_request* %7)
  %29 = load %struct.clk_factors*, %struct.clk_factors** %9, align 8
  %30 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load %struct.clk_factors*, %struct.clk_factors** %9, align 8
  %35 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @spin_lock_irqsave(i64 %36, i64 %37)
  br label %39

39:                                               ; preds = %33, %3
  %40 = load %struct.clk_factors*, %struct.clk_factors** %9, align 8
  %41 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @readl(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.clk_factors_config*, %struct.clk_factors_config** %10, align 8
  %45 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.clk_factors_config*, %struct.clk_factors_config** %10, align 8
  %48 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %7, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @FACTOR_SET(i32 %46, i32 %49, i32 %50, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.clk_factors_config*, %struct.clk_factors_config** %10, align 8
  %55 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.clk_factors_config*, %struct.clk_factors_config** %10, align 8
  %58 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %7, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @FACTOR_SET(i32 %56, i32 %59, i32 %60, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.clk_factors_config*, %struct.clk_factors_config** %10, align 8
  %65 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.clk_factors_config*, %struct.clk_factors_config** %10, align 8
  %68 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %7, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @FACTOR_SET(i32 %66, i32 %69, i32 %70, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.clk_factors_config*, %struct.clk_factors_config** %10, align 8
  %75 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.clk_factors_config*, %struct.clk_factors_config** %10, align 8
  %78 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %7, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @FACTOR_SET(i32 %76, i32 %79, i32 %80, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.clk_factors*, %struct.clk_factors** %9, align 8
  %86 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @writel(i32 %84, i32 %87)
  %89 = load i64, i64* %5, align 8
  %90 = lshr i64 %89, 20
  %91 = mul i64 %90, 500
  %92 = udiv i64 %91, 2
  %93 = call i32 @__delay(i64 %92)
  %94 = load %struct.clk_factors*, %struct.clk_factors** %9, align 8
  %95 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %39
  %99 = load %struct.clk_factors*, %struct.clk_factors** %9, align 8
  %100 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @spin_unlock_irqrestore(i64 %101, i64 %102)
  br label %104

104:                                              ; preds = %98, %39
  ret i32 0
}

declare dso_local %struct.clk_factors* @to_clk_factors(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @FACTOR_SET(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @__delay(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
