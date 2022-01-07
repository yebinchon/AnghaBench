; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btbcm.c_btbcm_read_local_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btbcm.c_btbcm_read_local_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hci_dev = type { i32 }

@HCI_OP_READ_LOCAL_VERSION = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"BCM: Reading local version info failed (%ld)\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"BCM: Local version length mismatch\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hci_dev*)* @btbcm_read_local_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @btbcm_read_local_version(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %6 = load i32, i32* @HCI_OP_READ_LOCAL_VERSION, align 4
  %7 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %8 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %5, i32 %6, i32 0, i32* null, i32 %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i64 @IS_ERR(%struct.sk_buff* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @PTR_ERR(%struct.sk_buff* %14)
  %16 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %2, align 8
  br label %34

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %22, 4
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @kfree_skb(%struct.sk_buff* %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.sk_buff* @ERR_PTR(i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %2, align 8
  br label %34

32:                                               ; preds = %18
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %33, %struct.sk_buff** %2, align 8
  br label %34

34:                                               ; preds = %32, %24, %12
  %35 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %35
}

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
