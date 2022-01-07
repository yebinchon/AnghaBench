; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_set_diag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_set_diag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }

@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Changing Intel diagnostic mode failed (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btintel_set_diag(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 3, i32* %12, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 3, i32* %13, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 3, i32* %14, align 4
  br label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %22 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %23 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %20, i32 64579, i32 3, i32* %21, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i64 @IS_ERR(%struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i32 @PTR_ERR(%struct.sk_buff* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @ENODATA, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %43

35:                                               ; preds = %27
  %36 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @bt_dev_err(%struct.hci_dev* %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %47

40:                                               ; preds = %19
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @kfree_skb(%struct.sk_buff* %41)
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @btintel_set_event_mask(%struct.hci_dev* %44, i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %35
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @btintel_set_event_mask(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
