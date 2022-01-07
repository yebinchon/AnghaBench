; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_setup_csr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_setup_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.hci_rp_read_local_version = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_OP_READ_LOCAL_VERSION = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"CSR: Local version failed (%d)\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"CSR: Local version length mismatch\00", align 1
@EIO = common dso_local global i32 0, align 4
@HCI_QUIRK_RESET_ON_CLOSE = common dso_local global i32 0, align 4
@HCI_QUIRK_BROKEN_STORED_LINK_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btusb_setup_csr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_setup_csr(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_rp_read_local_version*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = load i32, i32* @HCI_OP_READ_LOCAL_VERSION, align 4
  %13 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %14 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %11, i32 %12, i32 0, i32* null, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i64 @IS_ERR(%struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @PTR_ERR(%struct.sk_buff* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %66

25:                                               ; preds = %1
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 8
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %33 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @kfree_skb(%struct.sk_buff* %34)
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %66

38:                                               ; preds = %25
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.hci_rp_read_local_version*
  store %struct.hci_rp_read_local_version* %42, %struct.hci_rp_read_local_version** %4, align 8
  %43 = load %struct.hci_rp_read_local_version*, %struct.hci_rp_read_local_version** %4, align 8
  %44 = getelementptr inbounds %struct.hci_rp_read_local_version, %struct.hci_rp_read_local_version* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  %47 = icmp ne i32 %46, 10
  br i1 %47, label %54, label %48

48:                                               ; preds = %38
  %49 = load %struct.hci_rp_read_local_version*, %struct.hci_rp_read_local_version** %4, align 8
  %50 = getelementptr inbounds %struct.hci_rp_read_local_version, %struct.hci_rp_read_local_version* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = icmp eq i32 %52, 3164
  br i1 %53, label %54, label %63

54:                                               ; preds = %48, %38
  %55 = load i32, i32* @HCI_QUIRK_RESET_ON_CLOSE, align 4
  %56 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 0
  %58 = call i32 @clear_bit(i32 %55, i32* %57)
  %59 = load i32, i32* @HCI_QUIRK_BROKEN_STORED_LINK_KEY, align 4
  %60 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 0
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  br label %63

63:                                               ; preds = %54, %48
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @kfree_skb(%struct.sk_buff* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %31, %18
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
