; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_set_diag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_set_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_uart = type { %struct.bcm_data* }
%struct.bcm_data = type { i32 }
%struct.sk_buff = type { i32 }

@HCI_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BCM_LM_DIAG_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32)* @bcm_set_diag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_set_diag(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_uart*, align 8
  %7 = alloca %struct.bcm_data*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = call %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev* %9)
  store %struct.hci_uart* %10, %struct.hci_uart** %6, align 8
  %11 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %12 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %11, i32 0, i32 0
  %13 = load %struct.bcm_data*, %struct.bcm_data** %12, align 8
  store %struct.bcm_data* %13, %struct.bcm_data** %7, align 8
  %14 = load i32, i32* @HCI_RUNNING, align 4
  %15 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENETDOWN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.sk_buff* @bt_skb_alloc(i32 3, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %22
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = load i32, i32* @BCM_LM_DIAG_PKT, align 4
  %33 = call i32 @skb_put_u8(%struct.sk_buff* %31, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = call i32 @skb_put_u8(%struct.sk_buff* %34, i32 240)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @skb_put_u8(%struct.sk_buff* %36, i32 %37)
  %39 = load %struct.bcm_data*, %struct.bcm_data** %7, align 8
  %40 = getelementptr inbounds %struct.bcm_data, %struct.bcm_data* %39, i32 0, i32 0
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call i32 @skb_queue_tail(i32* %40, %struct.sk_buff* %41)
  %43 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %44 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %30, %27, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
