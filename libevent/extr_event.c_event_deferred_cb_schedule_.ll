; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_deferred_cb_schedule_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_deferred_cb_schedule_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i64 }
%struct.event_callback = type { i32 }

@current_base = common dso_local global %struct.event_base* null, align 8
@th_base_lock = common dso_local global i32 0, align 4
@MAX_DEFERREDS_QUEUED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_deferred_cb_schedule_(%struct.event_base* %0, %struct.event_callback* %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.event_callback*, align 8
  %5 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store %struct.event_callback* %1, %struct.event_callback** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.event_base*, %struct.event_base** %3, align 8
  %7 = icmp ne %struct.event_base* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load %struct.event_base*, %struct.event_base** @current_base, align 8
  store %struct.event_base* %9, %struct.event_base** %3, align 8
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.event_base*, %struct.event_base** %3, align 8
  %12 = load i32, i32* @th_base_lock, align 4
  %13 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %11, i32 %12)
  %14 = load %struct.event_base*, %struct.event_base** %3, align 8
  %15 = getelementptr inbounds %struct.event_base, %struct.event_base* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAX_DEFERREDS_QUEUED, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load %struct.event_base*, %struct.event_base** %3, align 8
  %21 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %22 = call i32 @event_callback_activate_later_nolock_(%struct.event_base* %20, %struct.event_callback* %21)
  store i32 %22, i32* %5, align 4
  br label %35

23:                                               ; preds = %10
  %24 = load %struct.event_base*, %struct.event_base** %3, align 8
  %25 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %26 = call i32 @event_callback_activate_nolock_(%struct.event_base* %24, %struct.event_callback* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.event_base*, %struct.event_base** %3, align 8
  %31 = getelementptr inbounds %struct.event_base, %struct.event_base* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %29, %23
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.event_base*, %struct.event_base** %3, align 8
  %37 = load i32, i32* @th_base_lock, align 4
  %38 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @event_callback_activate_later_nolock_(%struct.event_base*, %struct.event_callback*) #1

declare dso_local i32 @event_callback_activate_nolock_(%struct.event_base*, %struct.event_callback*) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
