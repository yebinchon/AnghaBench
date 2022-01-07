; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_queue_insert_active.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_queue_insert_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i64, i32*, i32, i32 }
%struct.event_callback = type { i32, i64 }

@EVLIST_ACTIVE = common dso_local global i32 0, align 4
@evcb_active_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_base*, %struct.event_callback*)* @event_queue_insert_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_queue_insert_active(%struct.event_base* %0, %struct.event_callback* %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.event_callback*, align 8
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store %struct.event_callback* %1, %struct.event_callback** %4, align 8
  %5 = load %struct.event_base*, %struct.event_base** %3, align 8
  %6 = call i32 @EVENT_BASE_ASSERT_LOCKED(%struct.event_base* %5)
  %7 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %8 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @EVLIST_ACTIVE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.event_base*, %struct.event_base** %3, align 8
  %16 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %17 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @INCR_EVENT_COUNT(%struct.event_base* %15, i32 %18)
  %20 = load i32, i32* @EVLIST_ACTIVE, align 4
  %21 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %22 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.event_base*, %struct.event_base** %3, align 8
  %26 = getelementptr inbounds %struct.event_base, %struct.event_base* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.event_base*, %struct.event_base** %3, align 8
  %30 = getelementptr inbounds %struct.event_base, %struct.event_base* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.event_base*, %struct.event_base** %3, align 8
  %33 = getelementptr inbounds %struct.event_base, %struct.event_base* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @MAX_EVENT_COUNT(i32 %31, i32 %34)
  %36 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %37 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.event_base*, %struct.event_base** %3, align 8
  %40 = getelementptr inbounds %struct.event_base, %struct.event_base* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @EVUTIL_ASSERT(i32 %43)
  %45 = load %struct.event_base*, %struct.event_base** %3, align 8
  %46 = getelementptr inbounds %struct.event_base, %struct.event_base* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %49 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %53 = load i32, i32* @evcb_active_next, align 4
  %54 = call i32 @TAILQ_INSERT_TAIL(i32* %51, %struct.event_callback* %52, i32 %53)
  br label %55

55:                                               ; preds = %14, %13
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
