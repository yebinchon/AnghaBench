; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_enable_sco_routing_to_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_enable_sco_routing_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { i32 }

@BT_CMD_ROUTE_SCO_TO_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"BT_CMD_ROUTE_SCO_TO_HOST command failed: %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_private*)* @btmrvl_enable_sco_routing_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_enable_sco_routing_to_host(%struct.btmrvl_private* %0) #0 {
  %2 = alloca %struct.btmrvl_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %6 = load i32, i32* @BT_CMD_ROUTE_SCO_TO_HOST, align 4
  %7 = call i32 @btmrvl_send_sync_cmd(%struct.btmrvl_private* %5, i32 %6, i32* %4, i32 1)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @BT_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @btmrvl_send_sync_cmd(%struct.btmrvl_private*, i32, i32*, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
