; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-factors.c_clk_factors_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-factors.c_clk_factors_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_factors = type { i32 (%struct.factors_request*)*, %struct.TYPE_2__*, i32, %struct.clk_factors_config* }
%struct.factors_request = type { i64, i64, i64, i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.clk_factors_config = type { i64, i64, i64, i64, i64, i32, i32, i32, i32 }

@SUNXI_FACTORS_NOT_APPLICABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_factors_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_factors_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.clk_factors*, align 8
  %13 = alloca %struct.clk_factors_config*, align 8
  %14 = alloca %struct.factors_request, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 1, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %16 = call %struct.clk_factors* @to_clk_factors(%struct.clk_hw* %15)
  store %struct.clk_factors* %16, %struct.clk_factors** %12, align 8
  %17 = load %struct.clk_factors*, %struct.clk_factors** %12, align 8
  %18 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %17, i32 0, i32 3
  %19 = load %struct.clk_factors_config*, %struct.clk_factors_config** %18, align 8
  store %struct.clk_factors_config* %19, %struct.clk_factors_config** %13, align 8
  %20 = load %struct.clk_factors*, %struct.clk_factors** %12, align 8
  %21 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @readl(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.clk_factors_config*, %struct.clk_factors_config** %13, align 8
  %25 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SUNXI_FACTORS_NOT_APPLICABLE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.clk_factors_config*, %struct.clk_factors_config** %13, align 8
  %31 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.clk_factors_config*, %struct.clk_factors_config** %13, align 8
  %34 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @FACTOR_GET(i32 %32, i64 %35, i32 %36)
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %29, %2
  %39 = load %struct.clk_factors_config*, %struct.clk_factors_config** %13, align 8
  %40 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SUNXI_FACTORS_NOT_APPLICABLE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.clk_factors_config*, %struct.clk_factors_config** %13, align 8
  %46 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.clk_factors_config*, %struct.clk_factors_config** %13, align 8
  %49 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @FACTOR_GET(i32 %47, i64 %50, i32 %51)
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %44, %38
  %54 = load %struct.clk_factors_config*, %struct.clk_factors_config** %13, align 8
  %55 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SUNXI_FACTORS_NOT_APPLICABLE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.clk_factors_config*, %struct.clk_factors_config** %13, align 8
  %61 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.clk_factors_config*, %struct.clk_factors_config** %13, align 8
  %64 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @FACTOR_GET(i32 %62, i64 %65, i32 %66)
  store i64 %67, i64* %9, align 8
  br label %68

68:                                               ; preds = %59, %53
  %69 = load %struct.clk_factors_config*, %struct.clk_factors_config** %13, align 8
  %70 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SUNXI_FACTORS_NOT_APPLICABLE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load %struct.clk_factors_config*, %struct.clk_factors_config** %13, align 8
  %76 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.clk_factors_config*, %struct.clk_factors_config** %13, align 8
  %79 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i64 @FACTOR_GET(i32 %77, i64 %80, i32 %81)
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %74, %68
  %84 = load %struct.clk_factors*, %struct.clk_factors** %12, align 8
  %85 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %84, i32 0, i32 0
  %86 = load i32 (%struct.factors_request*)*, i32 (%struct.factors_request*)** %85, align 8
  %87 = icmp ne i32 (%struct.factors_request*)* %86, null
  br i1 %87, label %88, label %127

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %14, i32 0, i32 0
  %90 = load i64, i64* %5, align 8
  store i64 %90, i64* %89, align 8
  %91 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %14, i32 0, i32 1
  %92 = load i64, i64* %6, align 8
  store i64 %92, i64* %91, align 8
  %93 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %14, i32 0, i32 2
  %94 = load i64, i64* %7, align 8
  store i64 %94, i64* %93, align 8
  %95 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %14, i32 0, i32 3
  %96 = load i64, i64* %9, align 8
  store i64 %96, i64* %95, align 8
  %97 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %14, i32 0, i32 4
  %98 = load i64, i64* %8, align 8
  store i64 %98, i64* %97, align 8
  %99 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %14, i32 0, i32 5
  store i32 0, i32* %99, align 8
  %100 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %14, i32 0, i32 6
  store i64 0, i64* %100, align 8
  %101 = load %struct.clk_factors*, %struct.clk_factors** %12, align 8
  %102 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = icmp ne %struct.TYPE_2__* %103, null
  br i1 %104, label %105, label %120

105:                                              ; preds = %88
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.clk_factors*, %struct.clk_factors** %12, align 8
  %108 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %106, %111
  %113 = load %struct.clk_factors*, %struct.clk_factors** %12, align 8
  %114 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %112, %117
  %119 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %14, i32 0, i32 5
  store i32 %118, i32* %119, align 8
  br label %120

120:                                              ; preds = %105, %88
  %121 = load %struct.clk_factors*, %struct.clk_factors** %12, align 8
  %122 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %121, i32 0, i32 0
  %123 = load i32 (%struct.factors_request*)*, i32 (%struct.factors_request*)** %122, align 8
  %124 = call i32 %123(%struct.factors_request* %14)
  %125 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %14, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %3, align 8
  br label %144

127:                                              ; preds = %83
  %128 = load i64, i64* %5, align 8
  %129 = load i64, i64* %6, align 8
  %130 = load %struct.clk_factors_config*, %struct.clk_factors_config** %13, align 8
  %131 = getelementptr inbounds %struct.clk_factors_config, %struct.clk_factors_config* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %129, %132
  %134 = mul i64 %128, %133
  %135 = load i64, i64* %7, align 8
  %136 = add i64 %135, 1
  %137 = mul i64 %134, %136
  %138 = load i64, i64* %8, align 8
  %139 = lshr i64 %137, %138
  %140 = load i64, i64* %9, align 8
  %141 = add i64 %140, 1
  %142 = udiv i64 %139, %141
  store i64 %142, i64* %11, align 8
  %143 = load i64, i64* %11, align 8
  store i64 %143, i64* %3, align 8
  br label %144

144:                                              ; preds = %127, %120
  %145 = load i64, i64* %3, align 8
  ret i64 %145
}

declare dso_local %struct.clk_factors* @to_clk_factors(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @FACTOR_GET(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
