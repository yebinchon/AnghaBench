; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_set_event_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btintel.c_btintel_set_event_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i32 }

@__const.btintel_set_event_mask.mask = private unnamed_addr constant [8 x i32] [i32 135, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Setting Intel event mask failed (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btintel_set_event_mask(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 16
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([8 x i32]* @__const.btintel_set_event_mask.mask to i8*), i64 32, i1 false)
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, 98
  store i32 %15, i32* %13, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %20 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %17, i32 64594, i32 8, i32* %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call i64 @IS_ERR(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call i32 @PTR_ERR(%struct.sk_buff* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @bt_dev_err(%struct.hci_dev* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %16
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call i32 @kfree_skb(%struct.sk_buff* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i32*, i32) #2

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #2

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #2

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
