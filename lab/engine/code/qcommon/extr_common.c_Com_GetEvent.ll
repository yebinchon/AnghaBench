; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_GetEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_GetEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@com_pushedEventsHead = common dso_local global i32 0, align 4
@com_pushedEventsTail = common dso_local global i32 0, align 4
@com_pushedEvents = common dso_local global i32* null, align 8
@MAX_PUSHED_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Com_GetEvent() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @com_pushedEventsHead, align 4
  %3 = load i32, i32* @com_pushedEventsTail, align 4
  %4 = icmp sgt i32 %2, %3
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = load i32, i32* @com_pushedEventsTail, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @com_pushedEventsTail, align 4
  %8 = load i32*, i32** @com_pushedEvents, align 8
  %9 = load i32, i32* @com_pushedEventsTail, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load i32, i32* @MAX_PUSHED_EVENTS, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %8, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %1, align 4
  br label %19

17:                                               ; preds = %0
  %18 = call i32 (...) @Com_GetRealEvent()
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %17, %5
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @Com_GetRealEvent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
