; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ll.c_ll_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ll.c_ll_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i64, %struct.ll_struct* }
%struct.ll_struct = type { i32, i32, i32, i32 }
%struct.ll_device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"hu %p\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCILL_AWAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @ll_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_open(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.ll_struct*, align 8
  %5 = alloca %struct.ll_device*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %6 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %6)
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ll_struct* @kzalloc(i32 16, i32 %8)
  store %struct.ll_struct* %9, %struct.ll_struct** %4, align 8
  %10 = load %struct.ll_struct*, %struct.ll_struct** %4, align 8
  %11 = icmp ne %struct.ll_struct* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.ll_struct*, %struct.ll_struct** %4, align 8
  %17 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %16, i32 0, i32 3
  %18 = call i32 @skb_queue_head_init(i32* %17)
  %19 = load %struct.ll_struct*, %struct.ll_struct** %4, align 8
  %20 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %19, i32 0, i32 2
  %21 = call i32 @skb_queue_head_init(i32* %20)
  %22 = load %struct.ll_struct*, %struct.ll_struct** %4, align 8
  %23 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load i32, i32* @HCILL_AWAKE, align 4
  %26 = load %struct.ll_struct*, %struct.ll_struct** %4, align 8
  %27 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ll_struct*, %struct.ll_struct** %4, align 8
  %29 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %30 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %29, i32 0, i32 1
  store %struct.ll_struct* %28, %struct.ll_struct** %30, align 8
  %31 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %32 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %15
  %36 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %37 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.ll_device* @serdev_device_get_drvdata(i64 %38)
  store %struct.ll_device* %39, %struct.ll_device** %5, align 8
  %40 = load %struct.ll_device*, %struct.ll_device** %5, align 8
  %41 = getelementptr inbounds %struct.ll_device, %struct.ll_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IS_ERR(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %35
  %46 = load %struct.ll_device*, %struct.ll_device** %5, align 8
  %47 = getelementptr inbounds %struct.ll_device, %struct.ll_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_prepare_enable(i32 %48)
  br label %50

50:                                               ; preds = %45, %35
  br label %51

51:                                               ; preds = %50, %15
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*) #1

declare dso_local %struct.ll_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.ll_device* @serdev_device_get_drvdata(i64) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
