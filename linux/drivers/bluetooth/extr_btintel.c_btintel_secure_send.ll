; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_secure_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_secure_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }

@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btintel_secure_send(%struct.hci_dev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca [253 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  br label %13

13:                                               ; preds = %43, %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 252
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 252, %19 ], [ %21, %20 ]
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds [253 x i32], [253 x i32]* %11, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = getelementptr inbounds [253 x i32], [253 x i32]* %11, i64 0, i64 0
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @memcpy(i32* %27, i8* %28, i32 %29)
  %31 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  %34 = getelementptr inbounds [253 x i32], [253 x i32]* %11, i64 0, i64 0
  %35 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %36 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %31, i32 64521, i32 %33, i32* %34, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %10, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = call i64 @IS_ERR(%struct.sk_buff* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %42 = call i32 @PTR_ERR(%struct.sk_buff* %41)
  store i32 %42, i32* %5, align 4
  br label %54

43:                                               ; preds = %22
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr i8, i8* %50, i64 %51
  store i8* %52, i8** %9, align 8
  br label %13

53:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
