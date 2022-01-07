; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ingenic_clk = type { %struct.ingenic_cgu* }
%struct.ingenic_cgu = type { i32, i64 }
%struct.ingenic_cgu_clk_info = type { i32, %struct.ingenic_cgu_pll_info }
%struct.ingenic_cgu_pll_info = type { i32, i32, i32, i32, i32, i32*, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [52 x i8] c"ingenic-cgu: request '%s' rate %luHz, actual %luHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @ingenic_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ingenic_clk*, align 8
  %8 = alloca %struct.ingenic_cgu*, align 8
  %9 = alloca %struct.ingenic_cgu_clk_info*, align 8
  %10 = alloca %struct.ingenic_cgu_pll_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %18 = call %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw* %17)
  store %struct.ingenic_clk* %18, %struct.ingenic_clk** %7, align 8
  %19 = load %struct.ingenic_clk*, %struct.ingenic_clk** %7, align 8
  %20 = getelementptr inbounds %struct.ingenic_clk, %struct.ingenic_clk* %19, i32 0, i32 0
  %21 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %20, align 8
  store %struct.ingenic_cgu* %21, %struct.ingenic_cgu** %8, align 8
  %22 = load %struct.ingenic_clk*, %struct.ingenic_clk** %7, align 8
  %23 = call %struct.ingenic_cgu_clk_info* @to_clk_info(%struct.ingenic_clk* %22)
  store %struct.ingenic_cgu_clk_info* %23, %struct.ingenic_cgu_clk_info** %9, align 8
  %24 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %9, align 8
  %25 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %24, i32 0, i32 1
  store %struct.ingenic_cgu_pll_info* %25, %struct.ingenic_cgu_pll_info** %10, align 8
  %26 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %9, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @ingenic_pll_calc(%struct.ingenic_cgu_clk_info* %26, i64 %27, i64 %28, i32* %13, i32* %14, i32* %15)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %9, align 8
  %35 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %37, i64 %38)
  br label %40

40:                                               ; preds = %33, %3
  %41 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %8, align 8
  %42 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %41, i32 0, i32 0
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %8, align 8
  %46 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %10, align 8
  %49 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %16, align 4
  %53 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %10, align 8
  %54 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %53, i32 0, i32 9
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 1
  %57 = call i32 @GENMASK(i64 %56, i32 0)
  %58 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %10, align 8
  %59 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %57, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %16, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %10, align 8
  %67 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub i32 %65, %68
  %70 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %10, align 8
  %71 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %69, %72
  %74 = load i32, i32* %16, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %16, align 4
  %76 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %10, align 8
  %77 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %76, i32 0, i32 8
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, 1
  %80 = call i32 @GENMASK(i64 %79, i32 0)
  %81 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %10, align 8
  %82 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 %80, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %16, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %10, align 8
  %90 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = sub i32 %88, %91
  %93 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %10, align 8
  %94 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = shl i32 %92, %95
  %97 = load i32, i32* %16, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %16, align 4
  %99 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %10, align 8
  %100 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, 1
  %103 = call i32 @GENMASK(i64 %102, i32 0)
  %104 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %10, align 8
  %105 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 %103, %106
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %16, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %16, align 4
  %111 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %10, align 8
  %112 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sub i32 %114, 1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %10, align 8
  %120 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 %118, %121
  %123 = load i32, i32* %16, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %8, align 8
  %127 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %10, align 8
  %130 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %128, %131
  %133 = call i32 @writel(i32 %125, i64 %132)
  %134 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %8, align 8
  %135 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %134, i32 0, i32 0
  %136 = load i64, i64* %12, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  ret i32 0
}

declare dso_local %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw*) #1

declare dso_local %struct.ingenic_cgu_clk_info* @to_clk_info(%struct.ingenic_clk*) #1

declare dso_local i64 @ingenic_pll_calc(%struct.ingenic_cgu_clk_info*, i64, i64, i32*, i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
