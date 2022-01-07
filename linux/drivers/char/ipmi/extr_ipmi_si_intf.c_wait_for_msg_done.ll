; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_wait_for_msg_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_wait_for_msg_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@SI_SM_CALL_WITH_DELAY = common dso_local global i32 0, align 4
@SI_SM_CALL_WITH_TICK_DELAY = common dso_local global i32 0, align 4
@SI_SM_CALL_WITHOUT_DELAY = common dso_local global i32 0, align 4
@SI_SM_HOSED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_info*)* @wait_for_msg_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_msg_done(%struct.smi_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smi_info*, align 8
  %4 = alloca i32, align 4
  store %struct.smi_info* %0, %struct.smi_info** %3, align 8
  %5 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %6 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32, i32)*, i32 (i32, i32)** %8, align 8
  %10 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %11 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 %9(i32 %12, i32 0)
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %50, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SI_SM_CALL_WITH_DELAY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SI_SM_CALL_WITH_TICK_DELAY, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18, %14
  %23 = call i32 @schedule_timeout_uninterruptible(i32 1)
  %24 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %25 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %30 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @jiffies_to_usecs(i32 1)
  %33 = call i32 %28(i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %50

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SI_SM_CALL_WITHOUT_DELAY, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %40 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %45 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %43(i32 %46, i32 0)
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %34
  br label %51

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %22
  br label %14

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SI_SM_HOSED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @jiffies_to_usecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
