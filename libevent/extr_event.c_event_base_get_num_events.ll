; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_base_get_num_events.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_base_get_num_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i64, i64, i64 }

@th_base_lock = common dso_local global i32 0, align 4
@EVENT_BASE_COUNT_ACTIVE = common dso_local global i32 0, align 4
@EVENT_BASE_COUNT_VIRTUAL = common dso_local global i32 0, align 4
@EVENT_BASE_COUNT_ADDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_base_get_num_events(%struct.event_base* %0, i32 %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.event_base*, %struct.event_base** %3, align 8
  %7 = load i32, i32* @th_base_lock, align 4
  %8 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EVENT_BASE_COUNT_ACTIVE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.event_base*, %struct.event_base** %3, align 8
  %15 = getelementptr inbounds %struct.event_base, %struct.event_base* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %13, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @EVENT_BASE_COUNT_VIRTUAL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.event_base*, %struct.event_base** %3, align 8
  %28 = getelementptr inbounds %struct.event_base, %struct.event_base* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %26, %21
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @EVENT_BASE_COUNT_ADDED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.event_base*, %struct.event_base** %3, align 8
  %41 = getelementptr inbounds %struct.event_base, %struct.event_base* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.event_base*, %struct.event_base** %3, align 8
  %49 = load i32, i32* @th_base_lock, align 4
  %50 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
