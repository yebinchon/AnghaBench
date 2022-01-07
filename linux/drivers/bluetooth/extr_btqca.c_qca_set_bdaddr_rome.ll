; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqca.c_qca_set_bdaddr_rome.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btqca.c_qca_set_bdaddr_rome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }

@EDL_NVM_ACCESS_SET_REQ_CMD = common dso_local global i32 0, align 4
@EDL_NVM_ACCESS_OPCODE = common dso_local global i32 0, align 4
@HCI_EV_VENDOR = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"QCA Change address command failed (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qca_set_bdaddr_rome(%struct.hci_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca [9 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @EDL_NVM_ACCESS_SET_REQ_CMD, align 4
  %10 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  store i32 %9, i32* %10, align 16
  %11 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 1
  store i32 2, i32* %11, align 4
  %12 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 2
  store i32 4, i32* %12, align 8
  %13 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @memcpy(i32* %14, i32* %15, i32 4)
  %17 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %18 = load i32, i32* @EDL_NVM_ACCESS_OPCODE, align 4
  %19 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %20 = load i32, i32* @HCI_EV_VENDOR, align 4
  %21 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %22 = call %struct.sk_buff* @__hci_cmd_sync_ev(%struct.hci_dev* %17, i32 %18, i32 36, i32* %19, i32 %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i64 @IS_ERR(%struct.sk_buff* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @PTR_ERR(%struct.sk_buff* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @bt_dev_err(%struct.hci_dev* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i32 @kfree_skb(%struct.sk_buff* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync_ev(%struct.hci_dev*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
