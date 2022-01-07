; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_read_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_read_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.intel_version = type { i32 }
%struct.sk_buff = type { i32, i32 }

@HCI_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Reading Intel version information failed (%ld)\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Intel version event size mismatch\00", align 1
@EILSEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btintel_read_version(%struct.hci_dev* %0, %struct.intel_version* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.intel_version*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.intel_version* %1, %struct.intel_version** %5, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %8 = load i32, i32* @HCI_CMD_TIMEOUT, align 4
  %9 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %7, i32 64517, i32 0, i32* null, i32 %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call i64 @IS_ERR(%struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.sk_buff* %15)
  %17 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.sk_buff* %18)
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 4
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %28 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @kfree_skb(%struct.sk_buff* %29)
  %31 = load i32, i32* @EILSEQ, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %20
  %34 = load %struct.intel_version*, %struct.intel_version** %5, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(%struct.intel_version* %34, i32 %37, i32 4)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %33, %26, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.intel_version*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
