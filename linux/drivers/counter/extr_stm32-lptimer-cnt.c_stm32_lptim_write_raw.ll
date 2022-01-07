; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stm32_lptim_cnt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @stm32_lptim_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptim_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.stm32_lptim_cnt*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.stm32_lptim_cnt* @iio_priv(%struct.iio_dev* %14)
  store %struct.stm32_lptim_cnt* %15, %struct.stm32_lptim_cnt** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %60 [
    i64 128, label %17
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %63

26:                                               ; preds = %20
  %27 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %12, align 8
  %28 = call i32 @stm32_lptim_is_enabled(%struct.stm32_lptim_cnt* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34, %26
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %63

39:                                               ; preds = %34, %31
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %63

48:                                               ; preds = %42, %39
  %49 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %12, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @stm32_lptim_setup(%struct.stm32_lptim_cnt* %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %6, align 4
  br label %63

56:                                               ; preds = %48
  %57 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %12, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @stm32_lptim_set_enable_state(%struct.stm32_lptim_cnt* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  br label %63

60:                                               ; preds = %5
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %56, %54, %45, %37, %23
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.stm32_lptim_cnt* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @stm32_lptim_is_enabled(%struct.stm32_lptim_cnt*) #1

declare dso_local i32 @stm32_lptim_setup(%struct.stm32_lptim_cnt*, i32) #1

declare dso_local i32 @stm32_lptim_set_enable_state(%struct.stm32_lptim_cnt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
