; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_base_get_max_events.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_base_get_max_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i64, i64, i64 }

@th_base_lock = common dso_local global i32 0, align 4
@EVENT_BASE_COUNT_ACTIVE = common dso_local global i32 0, align 4
@EVENT_BASE_COUNT_VIRTUAL = common dso_local global i32 0, align 4
@EVENT_BASE_COUNT_ADDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_base_get_max_events(%struct.event_base* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.event_base*, %struct.event_base** %4, align 8
  %9 = load i32, i32* @th_base_lock, align 4
  %10 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %8, i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @EVENT_BASE_COUNT_ACTIVE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.event_base*, %struct.event_base** %4, align 8
  %17 = getelementptr inbounds %struct.event_base, %struct.event_base* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load %struct.event_base*, %struct.event_base** %4, align 8
  %27 = getelementptr inbounds %struct.event_base, %struct.event_base* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %15
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @EVENT_BASE_COUNT_VIRTUAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.event_base*, %struct.event_base** %4, align 8
  %36 = getelementptr inbounds %struct.event_base, %struct.event_base* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.event_base*, %struct.event_base** %4, align 8
  %46 = getelementptr inbounds %struct.event_base, %struct.event_base* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %34
  br label %48

48:                                               ; preds = %47, %29
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @EVENT_BASE_COUNT_ADDED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.event_base*, %struct.event_base** %4, align 8
  %55 = getelementptr inbounds %struct.event_base, %struct.event_base* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load %struct.event_base*, %struct.event_base** %4, align 8
  %65 = getelementptr inbounds %struct.event_base, %struct.event_base* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %53
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.event_base*, %struct.event_base** %4, align 8
  %69 = load i32, i32* @th_base_lock, align 4
  %70 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
