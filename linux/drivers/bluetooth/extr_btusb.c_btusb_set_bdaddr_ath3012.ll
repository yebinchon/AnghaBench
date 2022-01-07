; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_set_bdaddr_ath3012.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_set_bdaddr_ath3012.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }

@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Change address command failed (%ld)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32*)* @btusb_set_bdaddr_ath3012 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_set_bdaddr_ath3012(%struct.hci_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca [10 x i32], align 16
  %8 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  store i32 1, i32* %9, align 16
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 3
  store i32 4, i32* %12, align 4
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @memcpy(i32* %14, i32* %15, i32 4)
  %17 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %19 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %20 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %17, i32 64523, i32 40, i32* %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i64 @IS_ERR(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i64 @PTR_ERR(%struct.sk_buff* %25)
  store i64 %26, i64* %8, align 8
  %27 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @bt_dev_err(%struct.hci_dev* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %24
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i64 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
