; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_nokia_bluetooth_serdev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_nokia_bluetooth_serdev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { %struct.device }
%struct.device = type { i32 }
%struct.nokia_bt_dev = type { %struct.TYPE_2__, i32, i32, %struct.clk*, i32, %struct.clk*, %struct.clk*, %struct.serdev_device* }
%struct.TYPE_2__ = type { i32, %struct.nokia_bt_dev*, %struct.serdev_device* }
%struct.clk = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not get reset gpio: %d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"host-wakeup\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"could not get host wakeup gpio: %d\00", align 1
@wakeup_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"could request wakeup irq: %d\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"bluetooth-wakeup\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"could not get BT wakeup gpio: %d\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"sysclk\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"could not get sysclk: %d\00", align 1
@nokia_proto = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"could not register bluetooth uart: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*)* @nokia_bluetooth_serdev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nokia_bluetooth_serdev_probe(%struct.serdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nokia_bt_dev*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.serdev_device* %0, %struct.serdev_device** %3, align 8
  %8 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %9 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nokia_bt_dev* @devm_kzalloc(%struct.device* %10, i32 72, i32 %11)
  store %struct.nokia_bt_dev* %12, %struct.nokia_bt_dev** %5, align 8
  %13 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %14 = icmp ne %struct.nokia_bt_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %159

18:                                               ; preds = %1
  %19 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %20 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %21 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %20, i32 0, i32 7
  store %struct.serdev_device* %19, %struct.serdev_device** %21, align 8
  %22 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %23 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store %struct.serdev_device* %19, %struct.serdev_device** %24, align 8
  %25 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %26 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %27 = call i32 @serdev_device_set_drvdata(%struct.serdev_device* %25, %struct.nokia_bt_dev* %26)
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %30 = call i8* @devm_gpiod_get(%struct.device* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = bitcast i8* %30 to %struct.clk*
  %32 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %33 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %32, i32 0, i32 6
  store %struct.clk* %31, %struct.clk** %33, align 8
  %34 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %35 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %34, i32 0, i32 6
  %36 = load %struct.clk*, %struct.clk** %35, align 8
  %37 = call i64 @IS_ERR(%struct.clk* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %18
  %40 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %41 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %40, i32 0, i32 6
  %42 = load %struct.clk*, %struct.clk** %41, align 8
  %43 = call i32 @PTR_ERR(%struct.clk* %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %159

48:                                               ; preds = %18
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* @GPIOD_IN, align 4
  %51 = call i8* @devm_gpiod_get(%struct.device* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = bitcast i8* %51 to %struct.clk*
  %53 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %54 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %53, i32 0, i32 5
  store %struct.clk* %52, %struct.clk** %54, align 8
  %55 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %56 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %55, i32 0, i32 5
  %57 = load %struct.clk*, %struct.clk** %56, align 8
  %58 = call i64 @IS_ERR(%struct.clk* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %48
  %61 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %62 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %61, i32 0, i32 5
  %63 = load %struct.clk*, %struct.clk** %62, align 8
  %64 = call i32 @PTR_ERR(%struct.clk* %63)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %159

69:                                               ; preds = %48
  %70 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %71 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %70, i32 0, i32 5
  %72 = load %struct.clk*, %struct.clk** %71, align 8
  %73 = call i32 @gpiod_to_irq(%struct.clk* %72)
  %74 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %75 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %78 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @wakeup_handler, align 4
  %81 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %82 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @IRQF_ONESHOT, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %87 = call i32 @devm_request_threaded_irq(%struct.device* %76, i32 %79, i32* null, i32 %80, i32 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.nokia_bt_dev* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %69
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %159

95:                                               ; preds = %69
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %98 = call i8* @devm_gpiod_get(%struct.device* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = bitcast i8* %98 to %struct.clk*
  %100 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %101 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %100, i32 0, i32 3
  store %struct.clk* %99, %struct.clk** %101, align 8
  %102 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %103 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %102, i32 0, i32 3
  %104 = load %struct.clk*, %struct.clk** %103, align 8
  %105 = call i64 @IS_ERR(%struct.clk* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %95
  %108 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %109 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %108, i32 0, i32 3
  %110 = load %struct.clk*, %struct.clk** %109, align 8
  %111 = call i32 @PTR_ERR(%struct.clk* %110)
  store i32 %111, i32* %7, align 4
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %159

116:                                              ; preds = %95
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = call %struct.clk* @devm_clk_get(%struct.device* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store %struct.clk* %118, %struct.clk** %6, align 8
  %119 = load %struct.clk*, %struct.clk** %6, align 8
  %120 = call i64 @IS_ERR(%struct.clk* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = load %struct.clk*, %struct.clk** %6, align 8
  %124 = call i32 @PTR_ERR(%struct.clk* %123)
  store i32 %124, i32* %7, align 4
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @dev_err(%struct.device* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %159

129:                                              ; preds = %116
  %130 = load %struct.clk*, %struct.clk** %6, align 8
  %131 = call i32 @clk_prepare_enable(%struct.clk* %130)
  %132 = load %struct.clk*, %struct.clk** %6, align 8
  %133 = call i32 @clk_get_rate(%struct.clk* %132)
  %134 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %135 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load %struct.clk*, %struct.clk** %6, align 8
  %137 = call i32 @clk_disable_unprepare(%struct.clk* %136)
  %138 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %139 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %138, i32 0, i32 1
  %140 = call i32 @skb_queue_head_init(i32* %139)
  %141 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %142 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %143 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  store %struct.nokia_bt_dev* %141, %struct.nokia_bt_dev** %144, align 8
  %145 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %146 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  store i32 2, i32* %147, align 8
  %148 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %5, align 8
  %149 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %148, i32 0, i32 0
  %150 = call i32 @hci_uart_register_device(%struct.TYPE_2__* %149, i32* @nokia_proto)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %129
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @dev_err(%struct.device* %154, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %7, align 4
  store i32 %157, i32* %2, align 4
  br label %159

158:                                              ; preds = %129
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %153, %122, %107, %90, %60, %39, %15
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.nokia_bt_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @serdev_device_set_drvdata(%struct.serdev_device*, %struct.nokia_bt_dev*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @gpiod_to_irq(%struct.clk*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.nokia_bt_dev*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @hci_uart_register_device(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
