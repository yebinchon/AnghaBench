; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_btrtl_setup_rtl8723a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_btrtl_setup_rtl8723a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btrtl_device_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTL_EPATCH_SIGNATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unexpected EPATCH signature!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.btrtl_device_info*)* @btrtl_setup_rtl8723a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrtl_setup_rtl8723a(%struct.hci_dev* %0, %struct.btrtl_device_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.btrtl_device_info*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.btrtl_device_info* %1, %struct.btrtl_device_info** %5, align 8
  %6 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %5, align 8
  %7 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %5, align 8
  %15 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RTL_EPATCH_SIGNATURE, align 4
  %18 = call i32 @memcmp(i32 %16, i32 %17, i32 8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %22 = call i32 @rtl_dev_err(%struct.hci_dev* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %34

25:                                               ; preds = %13
  %26 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %27 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %5, align 8
  %28 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %5, align 8
  %31 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rtl_download_firmware(%struct.hci_dev* %26, i32 %29, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %25, %20, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @rtl_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i32 @rtl_download_firmware(%struct.hci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
