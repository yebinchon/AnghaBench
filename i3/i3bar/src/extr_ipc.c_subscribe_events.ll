; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_ipc.c_subscribe_events.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_ipc.c_subscribe_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@I3_IPC_MESSAGE_TYPE_SUBSCRIBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"[ \22output\22, \22mode\22, \22barconfig_update\22 ]\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"[ \22workspace\22, \22output\22, \22mode\22, \22barconfig_update\22 ]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @subscribe_events() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @I3_IPC_MESSAGE_TYPE_SUBSCRIBE, align 4
  %5 = call i32 @i3_send_msg(i32 %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @I3_IPC_MESSAGE_TYPE_SUBSCRIBE, align 4
  %8 = call i32 @i3_send_msg(i32 %7, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %9

9:                                                ; preds = %6, %3
  ret void
}

declare dso_local i32 @i3_send_msg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
