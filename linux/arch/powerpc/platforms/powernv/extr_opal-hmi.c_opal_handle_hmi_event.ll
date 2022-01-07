; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-hmi.c_opal_handle_hmi_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-hmi.c_opal_handle_hmi_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.OpalHMIEvent = type { i32 }
%struct.opal_msg = type { i32* }
%struct.OpalHmiEvtNode = type { i32, i32 }

@OPAL_MSG_HMI_EVT = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"HMI: out of memory, Opal message event not handled\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@opal_hmi_evt_lock = common dso_local global i32 0, align 4
@opal_hmi_evt_list = common dso_local global i32 0, align 4
@hmi_event_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @opal_handle_hmi_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_handle_hmi_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.OpalHMIEvent*, align 8
  %10 = alloca %struct.opal_msg*, align 8
  %11 = alloca %struct.OpalHmiEvtNode*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.opal_msg*
  store %struct.opal_msg* %13, %struct.opal_msg** %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @OPAL_MSG_HMI_EVT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.opal_msg*, %struct.opal_msg** %10, align 8
  %20 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = bitcast i32* %22 to %struct.OpalHMIEvent*
  store %struct.OpalHMIEvent* %23, %struct.OpalHMIEvent** %9, align 8
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.OpalHmiEvtNode* @kzalloc(i32 8, i32 %24)
  store %struct.OpalHmiEvtNode* %25, %struct.OpalHmiEvtNode** %11, align 8
  %26 = load %struct.OpalHmiEvtNode*, %struct.OpalHmiEvtNode** %11, align 8
  %27 = icmp ne %struct.OpalHmiEvtNode* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %45

32:                                               ; preds = %18
  %33 = load %struct.OpalHmiEvtNode*, %struct.OpalHmiEvtNode** %11, align 8
  %34 = getelementptr inbounds %struct.OpalHmiEvtNode, %struct.OpalHmiEvtNode* %33, i32 0, i32 1
  %35 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %9, align 8
  %36 = call i32 @memcpy(i32* %34, %struct.OpalHMIEvent* %35, i32 4)
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_lock_irqsave(i32* @opal_hmi_evt_lock, i64 %37)
  %39 = load %struct.OpalHmiEvtNode*, %struct.OpalHmiEvtNode** %11, align 8
  %40 = getelementptr inbounds %struct.OpalHmiEvtNode, %struct.OpalHmiEvtNode* %39, i32 0, i32 0
  %41 = call i32 @list_add(i32* %40, i32* @opal_hmi_evt_list)
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* @opal_hmi_evt_lock, i64 %42)
  %44 = call i32 @schedule_work(i32* @hmi_event_work)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %32, %28, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.OpalHmiEvtNode* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.OpalHMIEvent*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
