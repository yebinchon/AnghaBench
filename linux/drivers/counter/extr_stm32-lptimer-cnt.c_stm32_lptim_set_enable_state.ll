; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_set_enable_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_set_enable_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_lptim_cnt = type { i32, i32, i32, i32 }

@STM32_LPTIM_ENABLE = common dso_local global i32 0, align 4
@STM32_LPTIM_CR = common dso_local global i32 0, align 4
@STM32_LPTIM_ARR = common dso_local global i32 0, align 4
@STM32_LPTIM_CMP = common dso_local global i32 0, align 4
@STM32_LPTIM_ISR = common dso_local global i32 0, align 4
@STM32_LPTIM_CMPOK_ARROK = common dso_local global i32 0, align 4
@STM32_LPTIM_ICR = common dso_local global i32 0, align 4
@STM32_LPTIM_CMPOKCF_ARROKCF = common dso_local global i32 0, align 4
@STM32_LPTIM_CNTSTRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_lptim_cnt*, i32)* @stm32_lptim_set_enable_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptim_set_enable_state(%struct.stm32_lptim_cnt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_lptim_cnt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stm32_lptim_cnt* %0, %struct.stm32_lptim_cnt** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @STM32_LPTIM_ENABLE, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @FIELD_PREP(i32 %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %4, align 8
  %12 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @STM32_LPTIM_CR, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @regmap_write(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %103

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %4, align 8
  %26 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_disable(i32 %27)
  %29 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %4, align 8
  %30 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %103

31:                                               ; preds = %21
  %32 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %4, align 8
  %33 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @STM32_LPTIM_ARR, align 4
  %36 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %4, align 8
  %37 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regmap_write(i32 %34, i32 %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %103

44:                                               ; preds = %31
  %45 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %4, align 8
  %46 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @STM32_LPTIM_CMP, align 4
  %49 = call i32 @regmap_write(i32 %47, i32 %48, i32 0)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %103

54:                                               ; preds = %44
  %55 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %4, align 8
  %56 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @STM32_LPTIM_ISR, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @STM32_LPTIM_CMPOK_ARROK, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @regmap_read_poll_timeout(i32 %57, i32 %58, i32 %59, i32 %62, i32 100, i32 1000)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %103

68:                                               ; preds = %54
  %69 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %4, align 8
  %70 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @STM32_LPTIM_ICR, align 4
  %73 = load i32, i32* @STM32_LPTIM_CMPOKCF_ARROKCF, align 4
  %74 = call i32 @regmap_write(i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %103

79:                                               ; preds = %68
  %80 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %4, align 8
  %81 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @clk_enable(i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %4, align 8
  %88 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @STM32_LPTIM_CR, align 4
  %91 = call i32 @regmap_write(i32 %89, i32 %90, i32 0)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %103

93:                                               ; preds = %79
  %94 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %4, align 8
  %95 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  %96 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %4, align 8
  %97 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @STM32_LPTIM_CR, align 4
  %100 = load i32, i32* @STM32_LPTIM_CNTSTRT, align 4
  %101 = load i32, i32* @STM32_LPTIM_CNTSTRT, align 4
  %102 = call i32 @regmap_update_bits(i32 %98, i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %93, %86, %77, %66, %52, %42, %24, %19
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
