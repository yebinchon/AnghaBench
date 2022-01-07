; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_queue_insert_active_later.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_queue_insert_active_later.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i64, i32, i32, i32 }
%struct.event_callback = type { i32, i64 }

@EVLIST_ACTIVE_LATER = common dso_local global i32 0, align 4
@EVLIST_ACTIVE = common dso_local global i32 0, align 4
@evcb_active_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_base*, %struct.event_callback*)* @event_queue_insert_active_later to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_queue_insert_active_later(%struct.event_base* %0, %struct.event_callback* %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.event_callback*, align 8
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store %struct.event_callback* %1, %struct.event_callback** %4, align 8
  %5 = load %struct.event_base*, %struct.event_base** %3, align 8
  %6 = call i32 @EVENT_BASE_ASSERT_LOCKED(%struct.event_base* %5)
  %7 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %8 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @EVLIST_ACTIVE_LATER, align 4
  %11 = load i32, i32* @EVLIST_ACTIVE, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.event_base*, %struct.event_base** %3, align 8
  %18 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %19 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @INCR_EVENT_COUNT(%struct.event_base* %17, i32 %20)
  %22 = load i32, i32* @EVLIST_ACTIVE_LATER, align 4
  %23 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %24 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.event_base*, %struct.event_base** %3, align 8
  %28 = getelementptr inbounds %struct.event_base, %struct.event_base* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.event_base*, %struct.event_base** %3, align 8
  %32 = getelementptr inbounds %struct.event_base, %struct.event_base* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.event_base*, %struct.event_base** %3, align 8
  %35 = getelementptr inbounds %struct.event_base, %struct.event_base* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MAX_EVENT_COUNT(i32 %33, i32 %36)
  %38 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %39 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.event_base*, %struct.event_base** %3, align 8
  %42 = getelementptr inbounds %struct.event_base, %struct.event_base* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @EVUTIL_ASSERT(i32 %45)
  %47 = load %struct.event_base*, %struct.event_base** %3, align 8
  %48 = getelementptr inbounds %struct.event_base, %struct.event_base* %47, i32 0, i32 1
  %49 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %50 = load i32, i32* @evcb_active_next, align 4
  %51 = call i32 @TAILQ_INSERT_TAIL(i32* %48, %struct.event_callback* %49, i32 %50)
  br label %52

52:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @EVENT_BASE_ASSERT_LOCKED(%struct.event_base*) #1

declare dso_local i32 @INCR_EVENT_COUNT(%struct.event_base*, i32) #1

declare dso_local i32 @MAX_EVENT_COUNT(i32, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.event_callback*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
