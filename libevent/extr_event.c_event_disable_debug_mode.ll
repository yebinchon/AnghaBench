; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_disable_debug_mode.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_disable_debug_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_debug_entry = type { i32 }

@event_debug_map_lock_ = common dso_local global i32 0, align 4
@event_debug_map = common dso_local global i32 0, align 4
@global_debug_map = common dso_local global i32 0, align 4
@event_debug_mode_on_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_disable_debug_mode() #0 {
  %1 = alloca %struct.event_debug_entry**, align 8
  %2 = alloca %struct.event_debug_entry*, align 8
  %3 = load i32, i32* @event_debug_map_lock_, align 4
  %4 = call i32 @EVLOCK_LOCK(i32 %3, i32 0)
  %5 = load i32, i32* @event_debug_map, align 4
  %6 = call %struct.event_debug_entry** @HT_START(i32 %5, i32* @global_debug_map)
  store %struct.event_debug_entry** %6, %struct.event_debug_entry*** %1, align 8
  br label %7

7:                                                ; preds = %10, %0
  %8 = load %struct.event_debug_entry**, %struct.event_debug_entry*** %1, align 8
  %9 = icmp ne %struct.event_debug_entry** %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load %struct.event_debug_entry**, %struct.event_debug_entry*** %1, align 8
  %12 = load %struct.event_debug_entry*, %struct.event_debug_entry** %11, align 8
  store %struct.event_debug_entry* %12, %struct.event_debug_entry** %2, align 8
  %13 = load i32, i32* @event_debug_map, align 4
  %14 = load %struct.event_debug_entry**, %struct.event_debug_entry*** %1, align 8
  %15 = call %struct.event_debug_entry** @HT_NEXT_RMV(i32 %13, i32* @global_debug_map, %struct.event_debug_entry** %14)
  store %struct.event_debug_entry** %15, %struct.event_debug_entry*** %1, align 8
  %16 = load %struct.event_debug_entry*, %struct.event_debug_entry** %2, align 8
  %17 = call i32 @mm_free(%struct.event_debug_entry* %16)
  br label %7

18:                                               ; preds = %7
  %19 = load i32, i32* @event_debug_map, align 4
  %20 = call i32 @HT_CLEAR(i32 %19, i32* @global_debug_map)
  %21 = load i32, i32* @event_debug_map_lock_, align 4
  %22 = call i32 @EVLOCK_UNLOCK(i32 %21, i32 0)
  store i64 0, i64* @event_debug_mode_on_, align 8
  ret void
}

declare dso_local i32 @EVLOCK_LOCK(i32, i32) #1

declare dso_local %struct.event_debug_entry** @HT_START(i32, i32*) #1

declare dso_local %struct.event_debug_entry** @HT_NEXT_RMV(i32, i32*, %struct.event_debug_entry**) #1

declare dso_local i32 @mm_free(%struct.event_debug_entry*) #1

declare dso_local i32 @HT_CLEAR(i32, i32*) #1

declare dso_local i32 @EVLOCK_UNLOCK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
