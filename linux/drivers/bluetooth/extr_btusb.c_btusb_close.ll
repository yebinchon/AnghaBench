; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btusb_data = type { i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BTUSB_ISOC_RUNNING = common dso_local global i32 0, align 4
@BTUSB_BULK_RUNNING = common dso_local global i32 0, align 4
@BTUSB_INTR_RUNNING = common dso_local global i32 0, align 4
@BTUSB_DIAG_RUNNING = common dso_local global i32 0, align 4
@BTUSB_WAKEUP_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btusb_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_close(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.btusb_data*, align 8
  %4 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = call %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev* %5)
  store %struct.btusb_data* %6, %struct.btusb_data** %3, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %12 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %11, i32 0, i32 4
  %13 = call i32 @cancel_work_sync(i32* %12)
  %14 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %15 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %14, i32 0, i32 3
  %16 = call i32 @cancel_work_sync(i32* %15)
  %17 = load i32, i32* @BTUSB_ISOC_RUNNING, align 4
  %18 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %19 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %18, i32 0, i32 2
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load i32, i32* @BTUSB_BULK_RUNNING, align 4
  %22 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %23 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %22, i32 0, i32 2
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  %25 = load i32, i32* @BTUSB_INTR_RUNNING, align 4
  %26 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %27 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %26, i32 0, i32 2
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load i32, i32* @BTUSB_DIAG_RUNNING, align 4
  %30 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %31 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %30, i32 0, i32 2
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  %33 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %34 = call i32 @btusb_stop_traffic(%struct.btusb_data* %33)
  %35 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %36 = call i32 @btusb_free_frags(%struct.btusb_data* %35)
  %37 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %38 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @usb_autopm_get_interface(%struct.TYPE_3__* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %1
  br label %64

44:                                               ; preds = %1
  %45 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %46 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* @BTUSB_WAKEUP_DISABLE, align 4
  %50 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %51 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %50, i32 0, i32 2
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %56 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %44
  %60 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %61 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = call i32 @usb_autopm_put_interface(%struct.TYPE_3__* %62)
  br label %64

64:                                               ; preds = %59, %43
  %65 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %66 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %65, i32 0, i32 0
  %67 = call i32 @usb_scuttle_anchored_urbs(i32* %66)
  ret i32 0
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @btusb_stop_traffic(%struct.btusb_data*) #1

declare dso_local i32 @btusb_free_frags(%struct.btusb_data*) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_3__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_3__*) #1

declare dso_local i32 @usb_scuttle_anchored_urbs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
