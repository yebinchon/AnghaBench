; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ath.c_ath_vendor_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ath.c_ath_vendor_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ath_vendor_cmd = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32, i32, i8*, i64)* @ath_vendor_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_vendor_cmd(%struct.hci_dev* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.ath_vendor_cmd, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  %15 = icmp ugt i64 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %46

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.ath_vendor_cmd, %struct.ath_vendor_cmd* %13, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @cpu_to_le16(i32 %22)
  %24 = getelementptr inbounds %struct.ath_vendor_cmd, %struct.ath_vendor_cmd* %13, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds %struct.ath_vendor_cmd, %struct.ath_vendor_cmd* %13, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.ath_vendor_cmd, %struct.ath_vendor_cmd* %13, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @memcpy(i32 %28, i8* %29, i64 %30)
  %32 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %33 = load i64, i64* %11, align 8
  %34 = add i64 %33, 4
  %35 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %36 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %32, i32 64523, i64 %34, %struct.ath_vendor_cmd* %13, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %12, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %38 = call i64 @IS_ERR(%struct.sk_buff* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %19
  %41 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %42 = call i32 @PTR_ERR(%struct.sk_buff* %41)
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %19
  %44 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %40, %16
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i64, %struct.ath_vendor_cmd*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
