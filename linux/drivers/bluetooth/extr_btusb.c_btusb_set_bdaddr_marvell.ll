; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_set_bdaddr_marvell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_set_bdaddr_marvell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }

@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"changing Marvell device address failed (%ld)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32*)* @btusb_set_bdaddr_marvell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_set_bdaddr_marvell(%struct.hci_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  store i32 254, i32* %9, align 16
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  store i32 4, i32* %10, align 4
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @memcpy(i32* %12, i32* %13, i32 4)
  %15 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %17 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %18 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %15, i32 64546, i32 32, i32* %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i64 @IS_ERR(%struct.sk_buff* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i64 @PTR_ERR(%struct.sk_buff* %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @bt_dev_err(%struct.hci_dev* %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i64, i64* %8, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @kfree_skb(%struct.sk_buff* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %22
  %34 = load i32, i32* %3, align 4
  ret i32 %34
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
