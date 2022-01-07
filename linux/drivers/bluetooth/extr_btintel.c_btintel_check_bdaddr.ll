; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_check_bdaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_check_bdaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_rp_read_bd_addr = type { i32 }
%struct.sk_buff = type { i32, i64 }

@HCI_OP_READ_BD_ADDR = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Reading Intel device address failed (%d)\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Intel device address length mismatch\00", align 1
@EIO = common dso_local global i32 0, align 4
@BDADDR_INTEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Found Intel default device address (%pMR)\00", align 1
@HCI_QUIRK_INVALID_BDADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btintel_check_bdaddr(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_rp_read_bd_addr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = load i32, i32* @HCI_OP_READ_BD_ADDR, align 4
  %9 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %10 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %7, i32 %8, i32 0, i32* null, i32 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i64 @IS_ERR(%struct.sk_buff* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @PTR_ERR(%struct.sk_buff* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %56

21:                                               ; preds = %1
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 4
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %29 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %56

34:                                               ; preds = %21
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.hci_rp_read_bd_addr*
  store %struct.hci_rp_read_bd_addr* %38, %struct.hci_rp_read_bd_addr** %4, align 8
  %39 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %4, align 8
  %40 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %39, i32 0, i32 0
  %41 = load i32, i32* @BDADDR_INTEL, align 4
  %42 = call i32 @bacmp(i32* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %34
  %45 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %46 = load %struct.hci_rp_read_bd_addr*, %struct.hci_rp_read_bd_addr** %4, align 8
  %47 = getelementptr inbounds %struct.hci_rp_read_bd_addr, %struct.hci_rp_read_bd_addr* %46, i32 0, i32 0
  %48 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32* %47)
  %49 = load i32, i32* @HCI_QUIRK_INVALID_BDADDR, align 4
  %50 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 0
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %44, %34
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %27, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @bacmp(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
