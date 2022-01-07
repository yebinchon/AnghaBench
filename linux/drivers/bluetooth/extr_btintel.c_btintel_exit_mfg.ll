; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_exit_mfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_exit_mfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }

@HCI_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Exiting manufacturer mode failed (%ld)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btintel_exit_mfg(%struct.hci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 2, i32 1
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %13, %3
  %22 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %24 = load i32, i32* @HCI_CMD_TIMEOUT, align 4
  %25 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %22, i32 64529, i32 2, i32* %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %9, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = call i64 @IS_ERR(%struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = call i32 @PTR_ERR(%struct.sk_buff* %31)
  %33 = call i32 @bt_dev_err(%struct.hci_dev* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = call i32 @PTR_ERR(%struct.sk_buff* %34)
  store i32 %35, i32* %4, align 4
  br label %39

36:                                               ; preds = %21
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = call i32 @kfree_skb(%struct.sk_buff* %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i32*, i32) #2

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #2

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #2

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
