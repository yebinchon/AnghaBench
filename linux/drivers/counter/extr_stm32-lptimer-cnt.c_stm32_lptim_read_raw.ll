; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stm32_lptim_cnt = type { i32, i32, i32 }

@STM32_LPTIM_CNT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @stm32_lptim_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptim_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stm32_lptim_cnt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.stm32_lptim_cnt* @iio_priv(%struct.iio_dev* %15)
  store %struct.stm32_lptim_cnt* %16, %struct.stm32_lptim_cnt** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %62 [
    i64 129, label %18
    i64 130, label %32
    i64 128, label %43
  ]

18:                                               ; preds = %5
  %19 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %12, align 8
  %20 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @STM32_LPTIM_CNT, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %6, align 4
  br label %65

28:                                               ; preds = %18
  %29 = load i32, i32* %13, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %31, i32* %6, align 4
  br label %65

32:                                               ; preds = %5
  %33 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %12, align 8
  %34 = call i32 @stm32_lptim_is_enabled(%struct.stm32_lptim_cnt* %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %65

39:                                               ; preds = %32
  %40 = load i32, i32* %14, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %42, i32* %6, align 4
  br label %65

43:                                               ; preds = %5
  %44 = load i32*, i32** %9, align 8
  store i32 1, i32* %44, align 4
  %45 = load i32*, i32** %10, align 8
  store i32 0, i32* %45, align 4
  %46 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %12, align 8
  %47 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %12, align 8
  %52 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32*, i32** %10, align 8
  store i32 2, i32* %56, align 4
  br label %59

57:                                               ; preds = %50
  %58 = load i32*, i32** %10, align 8
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %55
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %61, i32* %6, align 4
  br label %65

62:                                               ; preds = %5
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %60, %39, %37, %28, %26
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.stm32_lptim_cnt* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @stm32_lptim_is_enabled(%struct.stm32_lptim_cnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
