; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_start_next_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_start_next_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (i32, i32, i32)* }
%struct.TYPE_4__ = type { i32, i32 }

@SI_SM_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Start2\00", align 1
@xaction_notifier_list = common dso_local global i32 0, align 4
@NOTIFY_STOP_MASK = common dso_local global i32 0, align 4
@SI_SM_CALL_WITHOUT_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_info*)* @start_next_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_next_msg(%struct.smi_info* %0) #0 {
  %2 = alloca %struct.smi_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.smi_info* %0, %struct.smi_info** %2, align 8
  %5 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %6 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %11 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %10, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  %12 = load i32, i32* @SI_SM_IDLE, align 4
  store i32 %12, i32* %3, align 4
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %15 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %18 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %17, i32 0, i32 0
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %18, align 8
  %19 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %20 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %19, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %20, align 8
  %21 = call i32 @debug_timestamp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %23 = call i32 @atomic_notifier_call_chain(i32* @xaction_notifier_list, i32 0, %struct.smi_info* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @NOTIFY_STOP_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = load i32, i32* @SI_SM_CALL_WITHOUT_DELAY, align 4
  store i32 %29, i32* %3, align 4
  br label %59

30:                                               ; preds = %13
  %31 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %32 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %34, align 8
  %36 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %37 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %40 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %45 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 %35(i32 %38, i32 %43, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %30
  %53 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @return_hosed_msg(%struct.smi_info* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %30
  %57 = load i32, i32* @SI_SM_CALL_WITHOUT_DELAY, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %9
  br label %59

59:                                               ; preds = %58, %28
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @debug_timestamp(i8*) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, %struct.smi_info*) #1

declare dso_local i32 @return_hosed_msg(%struct.smi_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
