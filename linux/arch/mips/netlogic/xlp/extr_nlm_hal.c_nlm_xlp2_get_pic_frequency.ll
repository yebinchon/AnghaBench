; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_nlm_hal.c_nlm_xlp2_get_pic_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_nlm_hal.c_nlm_xlp2_get_pic_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SYS_9XX_POWER_ON_RESET_CFG = common dso_local global i32 0, align 4
@SYS_POWER_ON_RESET_CFG = common dso_local global i32 0, align 4
@SYS_9XX_CLK_DEV_SEL_REG = common dso_local global i32 0, align 4
@SYS_9XX_PLL_CTRL0 = common dso_local global i32 0, align 4
@SYS_9XX_PLL_CTRL2 = common dso_local global i32 0, align 4
@SYS_CLK_DEV_SEL_REG = common dso_local global i32 0, align 4
@SYS_PLL_CTRL0 = common dso_local global i32 0, align 4
@SYS_PLL_CTRL2 = common dso_local global i32 0, align 4
@SYS_9XX_CLK_DEV_DIV_REG = common dso_local global i32 0, align 4
@SYS_CLK_DEV_DIV_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nlm_xlp2_get_pic_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_xlp2_get_pic_frequency(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call %struct.TYPE_2__* @nlm_get_node(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @nlm_get_clock_regbase(i32 %23)
  store i32 %24, i32* %17, align 4
  %25 = call i32 (...) @cpu_is_xlp9xx()
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @SYS_9XX_POWER_ON_RESET_CFG, align 4
  %31 = call i32 @nlm_read_sys_reg(i32 %29, i32 %30)
  %32 = ashr i32 %31, 18
  %33 = and i32 %32, 3
  store i32 %33, i32* %16, align 4
  br label %40

34:                                               ; preds = %1
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @SYS_POWER_ON_RESET_CFG, align 4
  %37 = call i32 @nlm_read_sys_reg(i32 %35, i32 %36)
  %38 = ashr i32 %37, 18
  %39 = and i32 %38, 3
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i32, i32* %16, align 4
  switch i32 %41, label %46 [
    i32 0, label %42
    i32 1, label %43
    i32 2, label %44
    i32 3, label %45
  ]

42:                                               ; preds = %40
  store i32 200000000, i32* %18, align 4
  store i32 3, i32* %12, align 4
  br label %46

43:                                               ; preds = %40
  store i32 100000000, i32* %18, align 4
  store i32 1, i32* %12, align 4
  br label %46

44:                                               ; preds = %40
  store i32 125000000, i32* %18, align 4
  store i32 1, i32* %12, align 4
  br label %46

45:                                               ; preds = %40
  store i32 400000000, i32* %18, align 4
  store i32 3, i32* %12, align 4
  br label %46

46:                                               ; preds = %40, %45, %44, %43, %42
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %46
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* @SYS_9XX_CLK_DEV_SEL_REG, align 4
  %52 = call i32 @nlm_read_sys_reg(i32 %50, i32 %51)
  %53 = and i32 %52, 3
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  switch i32 %54, label %83 [
    i32 0, label %55
    i32 1, label %62
    i32 2, label %69
    i32 3, label %76
  ]

55:                                               ; preds = %49
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* @SYS_9XX_PLL_CTRL0, align 4
  %58 = call i32 @nlm_read_sys_reg(i32 %56, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @SYS_9XX_PLL_CTRL2, align 4
  %61 = call i32 @nlm_read_sys_reg(i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %83

62:                                               ; preds = %49
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @SYS_9XX_PLL_CTRL0_DEVX(i32 0)
  %65 = call i32 @nlm_read_sys_reg(i32 %63, i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @SYS_9XX_PLL_CTRL2_DEVX(i32 0)
  %68 = call i32 @nlm_read_sys_reg(i32 %66, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %83

69:                                               ; preds = %49
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @SYS_9XX_PLL_CTRL0_DEVX(i32 1)
  %72 = call i32 @nlm_read_sys_reg(i32 %70, i32 %71)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @SYS_9XX_PLL_CTRL2_DEVX(i32 1)
  %75 = call i32 @nlm_read_sys_reg(i32 %73, i32 %74)
  store i32 %75, i32* %4, align 4
  br label %83

76:                                               ; preds = %49
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @SYS_9XX_PLL_CTRL0_DEVX(i32 2)
  %79 = call i32 @nlm_read_sys_reg(i32 %77, i32 %78)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @SYS_9XX_PLL_CTRL2_DEVX(i32 2)
  %82 = call i32 @nlm_read_sys_reg(i32 %80, i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %49, %76, %69, %62, %55
  br label %120

84:                                               ; preds = %46
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @SYS_CLK_DEV_SEL_REG, align 4
  %87 = call i32 @nlm_read_sys_reg(i32 %85, i32 %86)
  %88 = ashr i32 %87, 22
  %89 = and i32 %88, 3
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  switch i32 %90, label %119 [
    i32 0, label %91
    i32 1, label %98
    i32 2, label %105
    i32 3, label %112
  ]

91:                                               ; preds = %84
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @SYS_PLL_CTRL0, align 4
  %94 = call i32 @nlm_read_sys_reg(i32 %92, i32 %93)
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @SYS_PLL_CTRL2, align 4
  %97 = call i32 @nlm_read_sys_reg(i32 %95, i32 %96)
  store i32 %97, i32* %4, align 4
  br label %119

98:                                               ; preds = %84
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @SYS_PLL_CTRL0_DEVX(i32 0)
  %101 = call i32 @nlm_read_sys_reg(i32 %99, i32 %100)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @SYS_PLL_CTRL2_DEVX(i32 0)
  %104 = call i32 @nlm_read_sys_reg(i32 %102, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %119

105:                                              ; preds = %84
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @SYS_PLL_CTRL0_DEVX(i32 1)
  %108 = call i32 @nlm_read_sys_reg(i32 %106, i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @SYS_PLL_CTRL2_DEVX(i32 1)
  %111 = call i32 @nlm_read_sys_reg(i32 %109, i32 %110)
  store i32 %111, i32* %4, align 4
  br label %119

112:                                              ; preds = %84
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @SYS_PLL_CTRL0_DEVX(i32 2)
  %115 = call i32 @nlm_read_sys_reg(i32 %113, i32 %114)
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @SYS_PLL_CTRL2_DEVX(i32 2)
  %118 = call i32 @nlm_read_sys_reg(i32 %116, i32 %117)
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %84, %112, %105, %98, %91
  br label %120

120:                                              ; preds = %119, %83
  %121 = load i32, i32* %3, align 4
  %122 = ashr i32 %121, 5
  %123 = and i32 %122, 7
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %3, align 4
  %125 = ashr i32 %124, 24
  %126 = and i32 %125, 7
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %4, align 4
  %128 = and i32 %127, 255
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %4, align 4
  %130 = ashr i32 %129, 8
  %131 = and i32 %130, 8191
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %6, align 4
  switch i32 %132, label %138 [
    i32 1, label %133
    i32 3, label %134
    i32 7, label %135
    i32 6, label %136
    i32 0, label %137
  ]

133:                                              ; preds = %120
  store i32 2, i32* %6, align 4
  br label %139

134:                                              ; preds = %120
  store i32 4, i32* %6, align 4
  br label %139

135:                                              ; preds = %120
  store i32 8, i32* %6, align 4
  br label %139

136:                                              ; preds = %120
  store i32 16, i32* %6, align 4
  br label %139

137:                                              ; preds = %120
  br label %138

138:                                              ; preds = %120, %137
  store i32 1, i32* %6, align 4
  br label %139

139:                                              ; preds = %138, %136, %135, %134, %133
  %140 = load i32, i32* %9, align 4
  %141 = sdiv i32 %140, 8192
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %18, align 4
  %143 = ashr i32 %142, 1
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 6, %144
  %146 = mul nsw i32 %143, %145
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %5, align 4
  %150 = shl i32 1, %149
  %151 = load i32, i32* %6, align 4
  %152 = mul nsw i32 %150, %151
  %153 = load i32, i32* %12, align 4
  %154 = mul nsw i32 %152, %153
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %139
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @do_div(i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %157, %139
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* @SYS_9XX_CLK_DEV_DIV_REG, align 4
  %167 = call i32 @nlm_read_sys_reg(i32 %165, i32 %166)
  %168 = and i32 %167, 3
  store i32 %168, i32* %13, align 4
  br label %175

169:                                              ; preds = %161
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* @SYS_CLK_DEV_DIV_REG, align 4
  %172 = call i32 @nlm_read_sys_reg(i32 %170, i32 %171)
  %173 = ashr i32 %172, 22
  %174 = and i32 %173, 3
  store i32 %174, i32* %13, align 4
  br label %175

175:                                              ; preds = %169, %164
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %13, align 4
  %178 = shl i32 1, %177
  %179 = call i32 @do_div(i32 %176, i32 %178)
  %180 = load i32, i32* %15, align 4
  ret i32 %180
}

declare dso_local %struct.TYPE_2__* @nlm_get_node(i32) #1

declare dso_local i32 @nlm_get_clock_regbase(i32) #1

declare dso_local i32 @cpu_is_xlp9xx(...) #1

declare dso_local i32 @nlm_read_sys_reg(i32, i32) #1

declare dso_local i32 @SYS_9XX_PLL_CTRL0_DEVX(i32) #1

declare dso_local i32 @SYS_9XX_PLL_CTRL2_DEVX(i32) #1

declare dso_local i32 @SYS_PLL_CTRL0_DEVX(i32) #1

declare dso_local i32 @SYS_PLL_CTRL2_DEVX(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
