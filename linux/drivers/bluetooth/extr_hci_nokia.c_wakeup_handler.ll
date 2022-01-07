; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_wakeup_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_wakeup_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nokia_bt_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wakeup_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wakeup_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nokia_bt_dev*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.nokia_bt_dev*
  store %struct.nokia_bt_dev* %10, %struct.nokia_bt_dev** %6, align 8
  %11 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %6, align 8
  %12 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %6, align 8
  %16 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpiod_get_value(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %6, align 8
  %20 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %3, align 4
  br label %40

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = call i32 @pm_runtime_get(%struct.device* %30)
  br label %35

32:                                               ; preds = %26
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = call i32 @pm_runtime_put(%struct.device* %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %6, align 8
  %38 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %24
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @gpiod_get_value(i32) #1

declare dso_local i32 @pm_runtime_get(%struct.device*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
