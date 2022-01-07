; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_ap-cpu-clk.c_ap_cpu_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_ap-cpu-clk.c_ap_cpu_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ap_cpu_clk = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64 }

@AP807_PLL_CR_1_CPU_CLK_DIV_RATIO_MASK = common dso_local global i32 0, align 4
@AP807_PLL_CR_1_CPU_CLK_DIV_RATIO_OFFSET = common dso_local global i32 0, align 4
@STATUS_POLL_PERIOD_US = common dso_local global i32 0, align 4
@STATUS_POLL_TIMEOUT_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @ap_cpu_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_cpu_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ap_cpu_clk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %17 = call %struct.ap_cpu_clk* @to_ap_cpu_clk(%struct.clk_hw* %16)
  store %struct.ap_cpu_clk* %17, %struct.ap_cpu_clk** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = udiv i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %11, align 4
  %22 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %23 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %28 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %31 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul i32 %29, %34
  %36 = add i32 %26, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %38 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %43 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %46 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul i32 %44, %49
  %51 = add i32 %41, %50
  store i32 %51, i32* %13, align 4
  %52 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %53 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %58 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %61 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul i32 %59, %64
  %66 = add i32 %56, %65
  store i32 %66, i32* %14, align 4
  %67 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %68 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @regmap_read(i32 %69, i32 %70, i32* %10)
  %72 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %73 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %82 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %80, %85
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %90 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %3
  %96 = load i32, i32* @AP807_PLL_CR_1_CPU_CLK_DIV_RATIO_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %10, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %102 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %100, %105
  %107 = load i32, i32* @AP807_PLL_CR_1_CPU_CLK_DIV_RATIO_OFFSET, align 4
  %108 = shl i32 %106, %107
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %95, %3
  %112 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %113 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @regmap_write(i32 %114, i32 %115, i32 %116)
  %118 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %119 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %123 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %128 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @regmap_update_bits(i32 %120, i32 %121, i32 %126, i32 %131)
  %133 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %134 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %138 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 9
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @BIT(i64 %141)
  %143 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %144 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 9
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @BIT(i64 %147)
  %149 = call i32 @regmap_update_bits(i32 %135, i32 %136, i32 %142, i32 %148)
  %150 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %151 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %150, i32 0, i32 1
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 11
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %156 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %159 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %158, i32 0, i32 1
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = mul i32 %157, %162
  %164 = zext i32 %163 to i64
  %165 = add nsw i64 %154, %164
  %166 = call i32 @BIT(i64 %165)
  store i32 %166, i32* %15, align 4
  %167 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %168 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %171 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %170, i32 0, i32 1
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %15, align 4
  %178 = and i32 %176, %177
  %179 = load i32, i32* @STATUS_POLL_PERIOD_US, align 4
  %180 = load i32, i32* @STATUS_POLL_TIMEOUT_US, align 4
  %181 = call i32 @regmap_read_poll_timeout(i32 %169, i32 %174, i32 %175, i32 %178, i32 %179, i32 %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %111
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %4, align 4
  br label %198

186:                                              ; preds = %111
  %187 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %188 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %14, align 4
  %191 = load %struct.ap_cpu_clk*, %struct.ap_cpu_clk** %8, align 8
  %192 = getelementptr inbounds %struct.ap_cpu_clk, %struct.ap_cpu_clk* %191, i32 0, i32 1
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 9
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @BIT(i64 %195)
  %197 = call i32 @regmap_update_bits(i32 %189, i32 %190, i32 %196, i32 0)
  store i32 0, i32* %4, align 4
  br label %198

198:                                              ; preds = %186, %184
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local %struct.ap_cpu_clk* @to_ap_cpu_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
