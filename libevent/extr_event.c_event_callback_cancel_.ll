; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_callback_cancel_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_callback_cancel_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.event_callback = type { i32 }

@th_base_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_callback_cancel_(%struct.event_base* %0, %struct.event_callback* %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.event_callback*, align 8
  %5 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store %struct.event_callback* %1, %struct.event_callback** %4, align 8
  %6 = load %struct.event_base*, %struct.event_base** %3, align 8
  %7 = load i32, i32* @th_base_lock, align 4
  %8 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %6, i32 %7)
  %9 = load %struct.event_base*, %struct.event_base** %3, align 8
  %10 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %11 = call i32 @event_callback_cancel_nolock_(%struct.event_base* %9, %struct.event_callback* %10, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.event_base*, %struct.event_base** %3, align 8
  %13 = load i32, i32* @th_base_lock, align 4
  %14 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @event_callback_cancel_nolock_(%struct.event_base*, %struct.event_callback*, i32) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
