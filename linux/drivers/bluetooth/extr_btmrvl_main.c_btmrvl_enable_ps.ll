; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_enable_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_enable_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BT_PS_ENABLE = common dso_local global i32 0, align 4
@BT_PS_DISABLE = common dso_local global i32 0, align 4
@BT_CMD_AUTO_SLEEP_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"PSMODE command failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btmrvl_enable_ps(%struct.btmrvl_private* %0) #0 {
  %2 = alloca %struct.btmrvl_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %2, align 8
  %5 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %6 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @BT_PS_ENABLE, align 4
  store i32 %11, i32* %4, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @BT_PS_DISABLE, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %16 = load i32, i32* @BT_CMD_AUTO_SLEEP_MODE, align 4
  %17 = call i32 @btmrvl_send_sync_cmd(%struct.btmrvl_private* %15, i32 %16, i32* %4, i32 1)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @BT_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %14
  ret i32 0
}

declare dso_local i32 @btmrvl_send_sync_cmd(%struct.btmrvl_private*, i32, i32*, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
