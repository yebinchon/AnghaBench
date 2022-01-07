; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_send_hscfg_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_send_hscfg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Sending HSCFG Command, gpio=0x%x, gap=0x%x\00", align 1
@BT_CMD_HOST_SLEEP_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"HSCFG command failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btmrvl_send_hscfg_cmd(%struct.btmrvl_private* %0) #0 {
  %2 = alloca %struct.btmrvl_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %2, align 8
  %5 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %6 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 65280
  %10 = ashr i32 %9, 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %13 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 255
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21)
  %23 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %24 = load i32, i32* @BT_CMD_HOST_SLEEP_CONFIG, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %26 = call i32 @btmrvl_send_sync_cmd(%struct.btmrvl_private* %23, i32 %24, i32* %25, i32 2)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = call i32 @BT_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %1
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @btmrvl_send_sync_cmd(%struct.btmrvl_private*, i32, i32*, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
