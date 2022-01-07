; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-timer-cnt.c_stm32_timer_cnt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_stm32-timer-cnt.c_stm32_timer_cnt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.stm32_timers = type { i32, i32, i32 }
%struct.stm32_timer_cnt = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.stm32_timer_cnt*, i32, i32, i32*, i32*, %struct.device*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stm32_timer_cnt_ops = common dso_local global i32 0, align 4
@stm32_counts = common dso_local global i32 0, align 4
@stm32_signals = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_timer_cnt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_timer_cnt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_timers*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.stm32_timer_cnt*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.stm32_timers* @dev_get_drvdata(i32 %10)
  store %struct.stm32_timers* %11, %struct.stm32_timers** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.stm32_timers*, %struct.stm32_timers** %4, align 8
  %15 = call i64 @IS_ERR_OR_NULL(%struct.stm32_timers* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %80

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.stm32_timer_cnt* @devm_kzalloc(%struct.device* %21, i32 72, i32 %22)
  store %struct.stm32_timer_cnt* %23, %struct.stm32_timer_cnt** %6, align 8
  %24 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %6, align 8
  %25 = icmp ne %struct.stm32_timer_cnt* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %80

29:                                               ; preds = %20
  %30 = load %struct.stm32_timers*, %struct.stm32_timers** %4, align 8
  %31 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %6, align 8
  %34 = getelementptr inbounds %struct.stm32_timer_cnt, %struct.stm32_timer_cnt* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.stm32_timers*, %struct.stm32_timers** %4, align 8
  %36 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %6, align 8
  %39 = getelementptr inbounds %struct.stm32_timer_cnt, %struct.stm32_timer_cnt* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.stm32_timers*, %struct.stm32_timers** %4, align 8
  %41 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %6, align 8
  %44 = getelementptr inbounds %struct.stm32_timer_cnt, %struct.stm32_timer_cnt* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i32 @dev_name(%struct.device* %45)
  %47 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %6, align 8
  %48 = getelementptr inbounds %struct.stm32_timer_cnt, %struct.stm32_timer_cnt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 7
  store i32 %46, i32* %49, align 8
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %6, align 8
  %52 = getelementptr inbounds %struct.stm32_timer_cnt, %struct.stm32_timer_cnt* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 6
  store %struct.device* %50, %struct.device** %53, align 8
  %54 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %6, align 8
  %55 = getelementptr inbounds %struct.stm32_timer_cnt, %struct.stm32_timer_cnt* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 5
  store i32* @stm32_timer_cnt_ops, i32** %56, align 8
  %57 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %6, align 8
  %58 = getelementptr inbounds %struct.stm32_timer_cnt, %struct.stm32_timer_cnt* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  store i32* @stm32_counts, i32** %59, align 8
  %60 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %6, align 8
  %61 = getelementptr inbounds %struct.stm32_timer_cnt, %struct.stm32_timer_cnt* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i32, i32* @stm32_signals, align 4
  %64 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %6, align 8
  %65 = getelementptr inbounds %struct.stm32_timer_cnt, %struct.stm32_timer_cnt* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @stm32_signals, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %6, align 8
  %70 = getelementptr inbounds %struct.stm32_timer_cnt, %struct.stm32_timer_cnt* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %6, align 8
  %73 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %6, align 8
  %74 = getelementptr inbounds %struct.stm32_timer_cnt, %struct.stm32_timer_cnt* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store %struct.stm32_timer_cnt* %72, %struct.stm32_timer_cnt** %75, align 8
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = load %struct.stm32_timer_cnt*, %struct.stm32_timer_cnt** %6, align 8
  %78 = getelementptr inbounds %struct.stm32_timer_cnt, %struct.stm32_timer_cnt* %77, i32 0, i32 0
  %79 = call i32 @devm_counter_register(%struct.device* %76, %struct.TYPE_2__* %78)
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %29, %26, %17
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.stm32_timers* @dev_get_drvdata(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.stm32_timers*) #1

declare dso_local %struct.stm32_timer_cnt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_counter_register(%struct.device*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
