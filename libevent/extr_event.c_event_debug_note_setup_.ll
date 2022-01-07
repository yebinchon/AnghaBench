; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_debug_note_setup_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_debug_note_setup_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }
%struct.event_debug_entry = type { i64, %struct.event* }

@event_debug_mode_on_ = common dso_local global i32 0, align 4
@event_debug_map_lock_ = common dso_local global i32 0, align 4
@event_debug_map = common dso_local global i32 0, align 4
@global_debug_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Out of memory in debugging code\00", align 1
@event_debug_mode_too_late = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event*)* @event_debug_note_setup_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_debug_note_setup_(%struct.event* %0) #0 {
  %2 = alloca %struct.event*, align 8
  %3 = alloca %struct.event_debug_entry*, align 8
  %4 = alloca %struct.event_debug_entry, align 8
  store %struct.event* %0, %struct.event** %2, align 8
  %5 = load i32, i32* @event_debug_mode_on_, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.event*, %struct.event** %2, align 8
  %10 = getelementptr inbounds %struct.event_debug_entry, %struct.event_debug_entry* %4, i32 0, i32 1
  store %struct.event* %9, %struct.event** %10, align 8
  %11 = load i32, i32* @event_debug_map_lock_, align 4
  %12 = call i32 @EVLOCK_LOCK(i32 %11, i32 0)
  %13 = load i32, i32* @event_debug_map, align 4
  %14 = call %struct.event_debug_entry* @HT_FIND(i32 %13, i32* @global_debug_map, %struct.event_debug_entry* %4)
  store %struct.event_debug_entry* %14, %struct.event_debug_entry** %3, align 8
  %15 = load %struct.event_debug_entry*, %struct.event_debug_entry** %3, align 8
  %16 = icmp ne %struct.event_debug_entry* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load %struct.event_debug_entry*, %struct.event_debug_entry** %3, align 8
  %19 = getelementptr inbounds %struct.event_debug_entry, %struct.event_debug_entry* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %35

20:                                               ; preds = %8
  %21 = call %struct.event_debug_entry* @mm_malloc(i32 16)
  store %struct.event_debug_entry* %21, %struct.event_debug_entry** %3, align 8
  %22 = load %struct.event_debug_entry*, %struct.event_debug_entry** %3, align 8
  %23 = icmp ne %struct.event_debug_entry* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call i32 @event_err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = load %struct.event*, %struct.event** %2, align 8
  %28 = load %struct.event_debug_entry*, %struct.event_debug_entry** %3, align 8
  %29 = getelementptr inbounds %struct.event_debug_entry, %struct.event_debug_entry* %28, i32 0, i32 1
  store %struct.event* %27, %struct.event** %29, align 8
  %30 = load %struct.event_debug_entry*, %struct.event_debug_entry** %3, align 8
  %31 = getelementptr inbounds %struct.event_debug_entry, %struct.event_debug_entry* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @event_debug_map, align 4
  %33 = load %struct.event_debug_entry*, %struct.event_debug_entry** %3, align 8
  %34 = call i32 @HT_INSERT(i32 %32, i32* @global_debug_map, %struct.event_debug_entry* %33)
  br label %35

35:                                               ; preds = %26, %17
  %36 = load i32, i32* @event_debug_map_lock_, align 4
  %37 = call i32 @EVLOCK_UNLOCK(i32 %36, i32 0)
  br label %38

38:                                               ; preds = %35, %7
  store i32 1, i32* @event_debug_mode_too_late, align 4
  ret void
}

declare dso_local i32 @EVLOCK_LOCK(i32, i32) #1

declare dso_local %struct.event_debug_entry* @HT_FIND(i32, i32*, %struct.event_debug_entry*) #1

declare dso_local %struct.event_debug_entry* @mm_malloc(i32) #1

declare dso_local i32 @event_err(i32, i8*) #1

declare dso_local i32 @HT_INSERT(i32, i32*, %struct.event_debug_entry*) #1

declare dso_local i32 @EVLOCK_UNLOCK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
