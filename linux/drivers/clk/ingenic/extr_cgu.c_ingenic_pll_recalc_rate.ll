; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ingenic_clk = type { i64, %struct.ingenic_cgu* }
%struct.ingenic_cgu = type { i32, i64, %struct.ingenic_cgu_clk_info* }
%struct.ingenic_cgu_clk_info = type { i64, %struct.ingenic_cgu_pll_info }
%struct.ingenic_cgu_pll_info = type { i32, i32, i32, i32, i32*, i32, i32, i64, i64, i64, i64, i64, i64 }

@CGU_CLK_PLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @ingenic_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ingenic_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ingenic_clk*, align 8
  %7 = alloca %struct.ingenic_cgu*, align 8
  %8 = alloca %struct.ingenic_cgu_clk_info*, align 8
  %9 = alloca %struct.ingenic_cgu_pll_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %18 = call %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw* %17)
  store %struct.ingenic_clk* %18, %struct.ingenic_clk** %6, align 8
  %19 = load %struct.ingenic_clk*, %struct.ingenic_clk** %6, align 8
  %20 = getelementptr inbounds %struct.ingenic_clk, %struct.ingenic_clk* %19, i32 0, i32 1
  %21 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %20, align 8
  store %struct.ingenic_cgu* %21, %struct.ingenic_cgu** %7, align 8
  %22 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %7, align 8
  %23 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %22, i32 0, i32 2
  %24 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %23, align 8
  %25 = load %struct.ingenic_clk*, %struct.ingenic_clk** %6, align 8
  %26 = getelementptr inbounds %struct.ingenic_clk, %struct.ingenic_clk* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %24, i64 %27
  store %struct.ingenic_cgu_clk_info* %28, %struct.ingenic_cgu_clk_info** %8, align 8
  %29 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %8, align 8
  %30 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CGU_CLK_PLL, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %8, align 8
  %37 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %36, i32 0, i32 1
  store %struct.ingenic_cgu_pll_info* %37, %struct.ingenic_cgu_pll_info** %9, align 8
  %38 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %7, align 8
  %39 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %38, i32 0, i32 0
  %40 = load i64, i64* %15, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %7, align 8
  %43 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %9, align 8
  %46 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %45, i32 0, i32 12
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %16, align 4
  %50 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %7, align 8
  %51 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %50, i32 0, i32 0
  %52 = load i64, i64* %15, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i32, i32* %16, align 4
  %55 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %9, align 8
  %56 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = lshr i32 %54, %57
  %59 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %9, align 8
  %60 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %59, i32 0, i32 11
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, 1
  %63 = call i32 @GENMASK(i64 %62, i32 0)
  %64 = and i32 %58, %63
  store i32 %64, i32* %10, align 4
  %65 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %9, align 8
  %66 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %65, i32 0, i32 10
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %9, align 8
  %74 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = lshr i32 %72, %75
  %77 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %9, align 8
  %78 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %77, i32 0, i32 9
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %79, 1
  %81 = call i32 @GENMASK(i64 %80, i32 0)
  %82 = and i32 %76, %81
  store i32 %82, i32* %11, align 4
  %83 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %9, align 8
  %84 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = zext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %9, align 8
  %92 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = lshr i32 %90, %93
  store i32 %94, i32* %12, align 4
  %95 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %9, align 8
  %96 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %97, 1
  %99 = call i32 @GENMASK(i64 %98, i32 0)
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %12, align 4
  %102 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %9, align 8
  %103 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %2
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %9, align 8
  %109 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @BIT(i32 %110)
  %112 = and i32 %107, %111
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = xor i1 %114, true
  br label %116

116:                                              ; preds = %106, %2
  %117 = phi i1 [ false, %2 ], [ %115, %106 ]
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i64, i64* %5, align 8
  store i64 %122, i64* %3, align 8
  br label %163

123:                                              ; preds = %116
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %142, %123
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %9, align 8
  %127 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = icmp ult i32 %125, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %124
  %131 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %9, align 8
  %132 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %145

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %13, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %13, align 4
  br label %124

145:                                              ; preds = %140, %124
  %146 = load i32, i32* %13, align 4
  %147 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %9, align 8
  %148 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %146, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @BUG_ON(i32 %151)
  %153 = load i32, i32* %13, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %13, align 4
  %155 = load i64, i64* %5, align 8
  %156 = trunc i64 %155 to i32
  %157 = load i32, i32* %10, align 4
  %158 = mul i32 %156, %157
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %13, align 4
  %161 = mul i32 %159, %160
  %162 = call i64 @div_u64(i32 %158, i32 %161)
  store i64 %162, i64* %3, align 8
  br label %163

163:                                              ; preds = %145, %121
  %164 = load i64, i64* %3, align 8
  ret i64 %164
}

declare dso_local %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
