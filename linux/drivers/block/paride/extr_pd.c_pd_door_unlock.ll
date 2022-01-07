; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_door_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_door_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd_unit = type { i32 }

@STAT_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@STAT_ERR = common dso_local global i32 0, align 4
@IDE_DOORUNLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Lock done\00", align 1
@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pd_unit*)* @pd_door_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_door_unlock(%struct.pd_unit* %0) #0 {
  %2 = alloca %struct.pd_unit*, align 8
  store %struct.pd_unit* %0, %struct.pd_unit** %2, align 8
  %3 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %4 = load i32, i32* @STAT_READY, align 4
  %5 = call i32 @pd_wait_for(%struct.pd_unit* %3, i32 %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @STAT_ERR, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %11 = load i32, i32* @IDE_DOORUNLOCK, align 4
  %12 = call i32 @pd_send_command(%struct.pd_unit* %10, i32 1, i32 0, i32 0, i32 0, i32 0, i32 %11)
  %13 = load %struct.pd_unit*, %struct.pd_unit** %2, align 8
  %14 = load i32, i32* @STAT_READY, align 4
  %15 = call i32 @pd_wait_for(%struct.pd_unit* %13, i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %9, %1
  %17 = load i32, i32* @Ok, align 4
  ret i32 %17
}

declare dso_local i32 @pd_wait_for(%struct.pd_unit*, i32, i8*) #1

declare dso_local i32 @pd_send_command(%struct.pd_unit*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
