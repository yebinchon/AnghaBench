; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_register_hdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_register_hdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.hci_dev* }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Can not allocate HCI device\00", align 1
@HCI_SDIO = common dso_local global i32 0, align 4
@btmrvl_open = common dso_local global i32 0, align 4
@btmrvl_close = common dso_local global i32 0, align 4
@btmrvl_flush = common dso_local global i32 0, align 4
@btmrvl_send_frame = common dso_local global i32 0, align 4
@btmrvl_setup = common dso_local global i32 0, align 4
@btmrvl_set_bdaddr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Can not register HCI device\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btmrvl_register_hdev(%struct.btmrvl_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btmrvl_private*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %3, align 8
  store %struct.hci_dev* null, %struct.hci_dev** %4, align 8
  %6 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %6, %struct.hci_dev** %4, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %8 = icmp ne %struct.hci_dev* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %56

11:                                               ; preds = %1
  %12 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %13 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %14 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store %struct.hci_dev* %12, %struct.hci_dev** %15, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %17 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %18 = call i32 @hci_set_drvdata(%struct.hci_dev* %16, %struct.btmrvl_private* %17)
  %19 = load i32, i32* @HCI_SDIO, align 4
  %20 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @btmrvl_open, align 4
  %23 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @btmrvl_close, align 4
  %26 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @btmrvl_flush, align 4
  %29 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @btmrvl_send_frame, align 4
  %32 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @btmrvl_setup, align 4
  %35 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @btmrvl_set_bdaddr, align 4
  %38 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %41 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %47 = call i32 @hci_register_dev(%struct.hci_dev* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %11
  %51 = call i32 @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %53

52:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %68

53:                                               ; preds = %50
  %54 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %55 = call i32 @hci_free_dev(%struct.hci_dev* %54)
  br label %56

56:                                               ; preds = %53, %9
  %57 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %58 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @kthread_stop(i32 %60)
  %62 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %63 = call i32 @btmrvl_free_adapter(%struct.btmrvl_private* %62)
  %64 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %65 = call i32 @kfree(%struct.btmrvl_private* %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %56, %52
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @hci_set_drvdata(%struct.hci_dev*, %struct.btmrvl_private*) #1

declare dso_local i32 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @btmrvl_free_adapter(%struct.btmrvl_private*) #1

declare dso_local i32 @kfree(%struct.btmrvl_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
