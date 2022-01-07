; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_qca_need_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_qca_need_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.qca_version = type { i32 }

@QCA_GET_TARGET_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @btusb_qca_need_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_qca_need_patch(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.qca_version, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %6 = load i32, i32* @QCA_GET_TARGET_VERSION, align 4
  %7 = call i64 @btusb_qca_send_vendor_req(%struct.usb_device* %5, i32 %6, %struct.qca_version* %4, i32 4)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.qca_version, %struct.qca_version* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = and i32 %13, -65536
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %10, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @btusb_qca_send_vendor_req(%struct.usb_device*, i32, %struct.qca_version*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
