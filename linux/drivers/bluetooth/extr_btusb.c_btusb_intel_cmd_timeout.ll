; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_intel_cmd_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_intel_cmd_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btusb_data = type { i32, i32, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"No way to reset. Ignoring and continuing\00", align 1
@BTUSB_HW_RESET_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"last reset failed? Not resetting again\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Initiating HW reset via gpio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*)* @btusb_intel_cmd_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btusb_intel_cmd_timeout(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.btusb_data*, align 8
  %4 = alloca %struct.gpio_desc*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = call %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev* %5)
  store %struct.btusb_data* %6, %struct.btusb_data** %3, align 8
  %7 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %8 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %7, i32 0, i32 2
  %9 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  store %struct.gpio_desc* %9, %struct.gpio_desc** %4, align 8
  %10 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %11 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %18 = icmp ne %struct.gpio_desc* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %21 = call i32 @bt_dev_err(%struct.hci_dev* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %39

22:                                               ; preds = %16
  %23 = load i32, i32* @BTUSB_HW_RESET_ACTIVE, align 4
  %24 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %25 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %24, i32 0, i32 1
  %26 = call i64 @test_and_set_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %30 = call i32 @bt_dev_err(%struct.hci_dev* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %39

31:                                               ; preds = %22
  %32 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %33 = call i32 @bt_dev_err(%struct.hci_dev* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %35 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %34, i32 1)
  %36 = call i32 @msleep(i32 100)
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %38 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %37, i32 0)
  br label %39

39:                                               ; preds = %31, %28, %19, %15
  ret void
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @gpiod_set_value_cansleep(%struct.gpio_desc*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
