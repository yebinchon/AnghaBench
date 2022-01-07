; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_intr_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_intr_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.btusb_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s urb %p status %d count %d\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"corrupted event packet\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@BTUSB_INTR_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"urb %p failed to resubmit (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @btusb_intr_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btusb_intr_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btusb_data*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 3
  %8 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %3, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = call %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev* %9)
  store %struct.btusb_data* %10, %struct.btusb_data** %4, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.urb*, %struct.urb** %2, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.urb* %14, i32 %17, i32 %20)
  %22 = load i32, i32* @HCI_RUNNING, align 4
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 1
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %109

28:                                               ; preds = %1
  %29 = load %struct.urb*, %struct.urb** %2, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %36
  store i32 %41, i32* %39, align 4
  %42 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %43 = load %struct.urb*, %struct.urb** %2, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.urb*, %struct.urb** %2, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @btusb_recv_intr(%struct.btusb_data* %42, i32 %45, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %33
  %52 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %53 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %51, %33
  br label %69

60:                                               ; preds = %28
  %61 = load %struct.urb*, %struct.urb** %2, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %109

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i32, i32* @BTUSB_INTR_RUNNING, align 4
  %71 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %72 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %71, i32 0, i32 2
  %73 = call i32 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %109

76:                                               ; preds = %69
  %77 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %78 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @usb_mark_last_busy(i32 %79)
  %81 = load %struct.urb*, %struct.urb** %2, align 8
  %82 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %83 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %82, i32 0, i32 0
  %84 = call i32 @usb_anchor_urb(%struct.urb* %81, i32* %83)
  %85 = load %struct.urb*, %struct.urb** %2, align 8
  %86 = load i32, i32* @GFP_ATOMIC, align 4
  %87 = call i32 @usb_submit_urb(%struct.urb* %85, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %76
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @EPERM, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %102 = load %struct.urb*, %struct.urb** %2, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sub nsw i32 0, %103
  %105 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %102, i32 %104)
  br label %106

106:                                              ; preds = %100, %95, %90
  %107 = load %struct.urb*, %struct.urb** %2, align 8
  %108 = call i32 @usb_unanchor_urb(%struct.urb* %107)
  br label %109

109:                                              ; preds = %27, %67, %75, %106, %76
  ret void
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32, %struct.urb*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @btusb_recv_intr(%struct.btusb_data*, i32, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @usb_mark_last_busy(i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
