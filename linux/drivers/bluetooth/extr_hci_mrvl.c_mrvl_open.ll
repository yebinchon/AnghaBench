; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_mrvl.c_mrvl_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_mrvl.c_mrvl_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i64, %struct.mrvl_data* }
%struct.mrvl_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"hu %p\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@STATE_CHIP_VER_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @mrvl_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrvl_open(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.mrvl_data*, align 8
  %5 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %6 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %6)
  %8 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %9 = call i32 @hci_uart_has_flow_control(%struct.hci_uart* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %54

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mrvl_data* @kzalloc(i32 12, i32 %15)
  store %struct.mrvl_data* %16, %struct.mrvl_data** %4, align 8
  %17 = load %struct.mrvl_data*, %struct.mrvl_data** %4, align 8
  %18 = icmp ne %struct.mrvl_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %14
  %23 = load %struct.mrvl_data*, %struct.mrvl_data** %4, align 8
  %24 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %23, i32 0, i32 2
  %25 = call i32 @skb_queue_head_init(i32* %24)
  %26 = load %struct.mrvl_data*, %struct.mrvl_data** %4, align 8
  %27 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %26, i32 0, i32 1
  %28 = call i32 @skb_queue_head_init(i32* %27)
  %29 = load i32, i32* @STATE_CHIP_VER_PENDING, align 4
  %30 = load %struct.mrvl_data*, %struct.mrvl_data** %4, align 8
  %31 = getelementptr inbounds %struct.mrvl_data, %struct.mrvl_data* %30, i32 0, i32 0
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  %33 = load %struct.mrvl_data*, %struct.mrvl_data** %4, align 8
  %34 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %35 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %34, i32 0, i32 1
  store %struct.mrvl_data* %33, %struct.mrvl_data** %35, align 8
  %36 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %37 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %22
  %41 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %42 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @serdev_device_open(i64 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %50

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %22
  store i32 0, i32* %2, align 4
  br label %54

50:                                               ; preds = %47
  %51 = load %struct.mrvl_data*, %struct.mrvl_data** %4, align 8
  %52 = call i32 @kfree(%struct.mrvl_data* %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %49, %19, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*) #1

declare dso_local i32 @hci_uart_has_flow_control(%struct.hci_uart*) #1

declare dso_local %struct.mrvl_data* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @serdev_device_open(i64) #1

declare dso_local i32 @kfree(%struct.mrvl_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
