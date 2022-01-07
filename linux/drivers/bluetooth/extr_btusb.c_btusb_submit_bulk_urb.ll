; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_submit_bulk_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_submit_bulk_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btusb_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32 }

@HCI_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btusb_bulk_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"urb %p submission failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32)* @btusb_submit_bulk_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_submit_bulk_urb(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btusb_data*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %13 = call %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev* %12)
  store %struct.btusb_data* %13, %struct.btusb_data** %6, align 8
  %14 = load i32, i32* @HCI_MAX_FRAME_SIZE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %20 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %106

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %27)
  store %struct.urb* %28, %struct.urb** %7, align 8
  %29 = load %struct.urb*, %struct.urb** %7, align 8
  %30 = icmp ne %struct.urb* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %106

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i8* @kmalloc(i32 %35, i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.urb*, %struct.urb** %7, align 8
  %42 = call i32 @usb_free_urb(%struct.urb* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %106

45:                                               ; preds = %34
  %46 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %47 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %50 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @usb_rcvbulkpipe(i32 %48, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.urb*, %struct.urb** %7, align 8
  %56 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %57 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @btusb_bulk_complete, align 4
  %63 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %64 = call i32 @usb_fill_bulk_urb(%struct.urb* %55, i32 %58, i32 %59, i8* %60, i32 %61, i32 %62, %struct.hci_dev* %63)
  %65 = load i32, i32* @URB_FREE_BUFFER, align 4
  %66 = load %struct.urb*, %struct.urb** %7, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %71 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @usb_mark_last_busy(i32 %72)
  %74 = load %struct.urb*, %struct.urb** %7, align 8
  %75 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %76 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %75, i32 0, i32 0
  %77 = call i32 @usb_anchor_urb(%struct.urb* %74, i32* %76)
  %78 = load %struct.urb*, %struct.urb** %7, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @usb_submit_urb(%struct.urb* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %45
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @EPERM, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %95 = load %struct.urb*, %struct.urb** %7, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 0, %96
  %98 = call i32 @bt_dev_err(%struct.hci_dev* %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %95, i32 %97)
  br label %99

99:                                               ; preds = %93, %88, %83
  %100 = load %struct.urb*, %struct.urb** %7, align 8
  %101 = call i32 @usb_unanchor_urb(%struct.urb* %100)
  br label %102

102:                                              ; preds = %99, %45
  %103 = load %struct.urb*, %struct.urb** %7, align 8
  %104 = call i32 @usb_free_urb(%struct.urb* %103)
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %40, %31, %23
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.hci_dev*) #1

declare dso_local i32 @usb_mark_last_busy(i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, %struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
