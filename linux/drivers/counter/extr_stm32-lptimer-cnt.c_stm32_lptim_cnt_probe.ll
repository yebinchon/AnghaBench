; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-lptimer-cnt.c_stm32_lptim_cnt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.stm32_lptimer = type { i64, i32, i32 }
%struct.stm32_lptim_cnt = type { %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, %struct.stm32_lptim_cnt*, i32, i32*, i32*, %struct.TYPE_8__*, i8* }
%struct.iio_dev = type { i32, i32*, i32*, %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@STM32_LPTIM_MAX_ARR = common dso_local global i32 0, align 4
@stm32_lptim_cnt_iio_info = common dso_local global i32 0, align 4
@stm32_lptim_enc_channels = common dso_local global i32 0, align 4
@stm32_lptim_cnt_channels = common dso_local global i32 0, align 4
@stm32_lptim_cnt_ops = common dso_local global i32 0, align 4
@stm32_lptim_enc_counts = common dso_local global i32 0, align 4
@stm32_lptim_cnt_signals = common dso_local global i32 0, align 4
@stm32_lptim_in1_counts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_lptim_cnt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_lptim_cnt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_lptimer*, align 8
  %5 = alloca %struct.stm32_lptim_cnt*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.stm32_lptimer* @dev_get_drvdata(i32 %11)
  store %struct.stm32_lptimer* %12, %struct.stm32_lptimer** %4, align 8
  %13 = load %struct.stm32_lptimer*, %struct.stm32_lptimer** %4, align 8
  %14 = call i64 @IS_ERR_OR_NULL(%struct.stm32_lptimer* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %143

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_8__* %21, i32 80)
  store %struct.iio_dev* %22, %struct.iio_dev** %6, align 8
  %23 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %24 = icmp ne %struct.iio_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %143

28:                                               ; preds = %19
  %29 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %30 = call %struct.stm32_lptim_cnt* @iio_priv(%struct.iio_dev* %29)
  store %struct.stm32_lptim_cnt* %30, %struct.stm32_lptim_cnt** %5, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %34 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %33, i32 0, i32 4
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %34, align 8
  %35 = load %struct.stm32_lptimer*, %struct.stm32_lptimer** %4, align 8
  %36 = getelementptr inbounds %struct.stm32_lptimer, %struct.stm32_lptimer* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %39 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.stm32_lptimer*, %struct.stm32_lptimer** %4, align 8
  %41 = getelementptr inbounds %struct.stm32_lptimer, %struct.stm32_lptimer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %44 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @STM32_LPTIM_MAX_ARR, align 4
  %46 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %47 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i8* @dev_name(%struct.TYPE_8__* %49)
  %51 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 2
  store i32* @stm32_lptim_cnt_iio_info, i32** %66, align 8
  %67 = load %struct.stm32_lptimer*, %struct.stm32_lptimer** %4, align 8
  %68 = getelementptr inbounds %struct.stm32_lptimer, %struct.stm32_lptimer* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %28
  %72 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 1
  store i32* @stm32_lptim_enc_channels, i32** %73, align 8
  br label %77

74:                                               ; preds = %28
  %75 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 1
  store i32* @stm32_lptim_cnt_channels, i32** %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %79 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i8* @dev_name(%struct.TYPE_8__* %81)
  %83 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %84 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 7
  store i8* %82, i8** %85, align 8
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %89 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 6
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %90, align 8
  %91 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %92 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 5
  store i32* @stm32_lptim_cnt_ops, i32** %93, align 8
  %94 = load %struct.stm32_lptimer*, %struct.stm32_lptimer** %4, align 8
  %95 = getelementptr inbounds %struct.stm32_lptimer, %struct.stm32_lptimer* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %77
  %99 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %100 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  store i32* @stm32_lptim_enc_counts, i32** %101, align 8
  %102 = load i32, i32* @stm32_lptim_cnt_signals, align 4
  %103 = call i32 @ARRAY_SIZE(i32 %102)
  %104 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %105 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  br label %114

107:                                              ; preds = %77
  %108 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %109 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  store i32* @stm32_lptim_in1_counts, i32** %110, align 8
  %111 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %112 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %107, %98
  %115 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %116 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  %118 = load i32, i32* @stm32_lptim_cnt_signals, align 4
  %119 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %120 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 3
  store i32 %118, i32* %121, align 8
  %122 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %123 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %124 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  store %struct.stm32_lptim_cnt* %122, %struct.stm32_lptim_cnt** %125, align 8
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %128 = call i32 @platform_set_drvdata(%struct.platform_device* %126, %struct.stm32_lptim_cnt* %127)
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %132 = call i32 @devm_iio_device_register(%struct.TYPE_8__* %130, %struct.iio_dev* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %114
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %2, align 4
  br label %143

137:                                              ; preds = %114
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load %struct.stm32_lptim_cnt*, %struct.stm32_lptim_cnt** %5, align 8
  %141 = getelementptr inbounds %struct.stm32_lptim_cnt, %struct.stm32_lptim_cnt* %140, i32 0, i32 0
  %142 = call i32 @devm_counter_register(%struct.TYPE_8__* %139, %struct.TYPE_9__* %141)
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %137, %135, %25, %16
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.stm32_lptimer* @dev_get_drvdata(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.stm32_lptimer*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.stm32_lptim_cnt* @iio_priv(%struct.iio_dev*) #1

declare dso_local i8* @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_lptim_cnt*) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_8__*, %struct.iio_dev*) #1

declare dso_local i32 @devm_counter_register(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
