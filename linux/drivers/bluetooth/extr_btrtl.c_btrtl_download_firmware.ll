; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_btrtl_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_btrtl_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btrtl_device_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"assuming no firmware upload needed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrtl_download_firmware(%struct.hci_dev* %0, %struct.btrtl_device_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.btrtl_device_info*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.btrtl_device_info* %1, %struct.btrtl_device_info** %5, align 8
  %6 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %5, align 8
  %7 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = call i32 @rtl_dev_info(%struct.hci_dev* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %5, align 8
  %15 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %27 [
    i32 132, label %19
    i32 133, label %19
    i32 131, label %23
    i32 129, label %23
    i32 130, label %23
    i32 128, label %23
  ]

19:                                               ; preds = %13, %13
  %20 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %21 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %5, align 8
  %22 = call i32 @btrtl_setup_rtl8723a(%struct.hci_dev* %20, %struct.btrtl_device_info* %21)
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %13, %13, %13, %13
  %24 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %25 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %5, align 8
  %26 = call i32 @btrtl_setup_rtl8723b(%struct.hci_dev* %24, %struct.btrtl_device_info* %25)
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %13
  %28 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %29 = call i32 @rtl_dev_info(%struct.hci_dev* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %23, %19, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @rtl_dev_info(%struct.hci_dev*, i8*) #1

declare dso_local i32 @btrtl_setup_rtl8723a(%struct.hci_dev*, %struct.btrtl_device_info*) #1

declare dso_local i32 @btrtl_setup_rtl8723b(%struct.hci_dev*, %struct.btrtl_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
