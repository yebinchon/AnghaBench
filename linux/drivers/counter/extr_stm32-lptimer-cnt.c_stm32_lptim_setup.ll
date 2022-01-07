; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_lptim_cnt = type { i32, i32, i64 }

@STM32_LPTIM_ENC = common dso_local global i32 0, align 4
@STM32_LPTIM_COUNTMODE = common dso_local global i32 0, align 4
@STM32_LPTIM_CKPOL = common dso_local global i32 0, align 4
@STM32_LPTIM_PRESC = common dso_local global i32 0, align 4
@STM32_LPTIM_CFGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_lptim_cnt*, i32)* @stm32_lptim_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptim_setup(%struct.stm32_lptim_cnt* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_lptim_cnt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stm32_lptim_cnt* %0, %struct.stm32_lptim_cnt** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @STM32_LPTIM_ENC, align 4
  %8 = load i32, i32* @STM32_LPTIM_COUNTMODE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @STM32_LPTIM_CKPOL, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @STM32_LPTIM_PRESC, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %3, align 8
  %15 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @STM32_LPTIM_ENC, align 4
  br label %24

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  store i32 %25, i32* %6, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @STM32_LPTIM_COUNTMODE, align 4
  br label %32

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %24
  %35 = load i32, i32* @STM32_LPTIM_CKPOL, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %3, align 8
  %40 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ]
  %45 = call i32 @FIELD_PREP(i32 %35, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %3, align 8
  %49 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @STM32_LPTIM_CFGR, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 %53)
  ret i32 %54
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
