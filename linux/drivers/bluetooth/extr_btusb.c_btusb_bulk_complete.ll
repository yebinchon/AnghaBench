; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_bulk_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_bulk_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.btusb_data = type { i64 (%struct.btusb_data*, i32, i32)*, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s urb %p status %d count %d\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"corrupted ACL packet\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@BTUSB_BULK_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"urb %p failed to resubmit (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @btusb_bulk_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btusb_bulk_complete(%struct.urb* %0) #0 {
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
  br label %112

28:                                               ; preds = %1
  %29 = load %struct.urb*, %struct.urb** %2, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %63

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
  %43 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %42, i32 0, i32 0
  %44 = load i64 (%struct.btusb_data*, i32, i32)*, i64 (%struct.btusb_data*, i32, i32)** %43, align 8
  %45 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %46 = load %struct.urb*, %struct.urb** %2, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.urb*, %struct.urb** %2, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 %44(%struct.btusb_data* %45, i32 %48, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %33
  %55 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %56 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %54, %33
  br label %72

63:                                               ; preds = %28
  %64 = load %struct.urb*, %struct.urb** %2, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %112

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %62
  %73 = load i32, i32* @BTUSB_BULK_RUNNING, align 4
  %74 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %75 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %74, i32 0, i32 3
  %76 = call i32 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %112

79:                                               ; preds = %72
  %80 = load %struct.urb*, %struct.urb** %2, align 8
  %81 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %82 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %81, i32 0, i32 2
  %83 = call i32 @usb_anchor_urb(%struct.urb* %80, i32* %82)
  %84 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %85 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @usb_mark_last_busy(i32 %86)
  %88 = load %struct.urb*, %struct.urb** %2, align 8
  %89 = load i32, i32* @GFP_ATOMIC, align 4
  %90 = call i32 @usb_submit_urb(%struct.urb* %88, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %79
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @EPERM, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %105 = load %struct.urb*, %struct.urb** %2, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sub nsw i32 0, %106
  %108 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %105, i32 %107)
  br label %109

109:                                              ; preds = %103, %98, %93
  %110 = load %struct.urb*, %struct.urb** %2, align 8
  %111 = call i32 @usb_unanchor_urb(%struct.urb* %110)
  br label %112

112:                                              ; preds = %27, %70, %78, %109, %79
  ret void
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32, %struct.urb*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_mark_last_busy(i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
