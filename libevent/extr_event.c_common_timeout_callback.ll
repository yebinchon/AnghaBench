; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_common_timeout_callback.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_common_timeout_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }
%struct.common_timeout_list = type { i32, %struct.event_base* }
%struct.event_base = type { i32 }
%struct.event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@th_base_lock = common dso_local global i32 0, align 4
@MICROSECONDS_MASK = common dso_local global i32 0, align 4
@EVENT_DEL_NOBLOCK = common dso_local global i32 0, align 4
@EV_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @common_timeout_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_timeout_callback(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.common_timeout_list*, align 8
  %9 = alloca %struct.event_base*, align 8
  %10 = alloca %struct.event*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.common_timeout_list*
  store %struct.common_timeout_list* %12, %struct.common_timeout_list** %8, align 8
  %13 = load %struct.common_timeout_list*, %struct.common_timeout_list** %8, align 8
  %14 = getelementptr inbounds %struct.common_timeout_list, %struct.common_timeout_list* %13, i32 0, i32 1
  %15 = load %struct.event_base*, %struct.event_base** %14, align 8
  store %struct.event_base* %15, %struct.event_base** %9, align 8
  store %struct.event* null, %struct.event** %10, align 8
  %16 = load %struct.event_base*, %struct.event_base** %9, align 8
  %17 = load i32, i32* @th_base_lock, align 4
  %18 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %16, i32 %17)
  %19 = load %struct.event_base*, %struct.event_base** %9, align 8
  %20 = call i32 @gettime(%struct.event_base* %19, %struct.timeval* %7)
  br label %21

21:                                               ; preds = %3, %54
  %22 = load %struct.common_timeout_list*, %struct.common_timeout_list** %8, align 8
  %23 = getelementptr inbounds %struct.common_timeout_list, %struct.common_timeout_list* %22, i32 0, i32 0
  %24 = call %struct.event* @TAILQ_FIRST(i32* %23)
  store %struct.event* %24, %struct.event** %10, align 8
  %25 = load %struct.event*, %struct.event** %10, align 8
  %26 = icmp ne %struct.event* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = load %struct.event*, %struct.event** %10, align 8
  %29 = getelementptr inbounds %struct.event, %struct.event* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %31, %33
  br i1 %34, label %53, label %35

35:                                               ; preds = %27
  %36 = load %struct.event*, %struct.event** %10, align 8
  %37 = getelementptr inbounds %struct.event, %struct.event* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %35
  %44 = load %struct.event*, %struct.event** %10, align 8
  %45 = getelementptr inbounds %struct.event, %struct.event* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MICROSECONDS_MASK, align 4
  %49 = and i32 %47, %48
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43, %27, %21
  br label %61

54:                                               ; preds = %43, %35
  %55 = load %struct.event*, %struct.event** %10, align 8
  %56 = load i32, i32* @EVENT_DEL_NOBLOCK, align 4
  %57 = call i32 @event_del_nolock_(%struct.event* %55, i32 %56)
  %58 = load %struct.event*, %struct.event** %10, align 8
  %59 = load i32, i32* @EV_TIMEOUT, align 4
  %60 = call i32 @event_active_nolock_(%struct.event* %58, i32 %59, i32 1)
  br label %21

61:                                               ; preds = %53
  %62 = load %struct.event*, %struct.event** %10, align 8
  %63 = icmp ne %struct.event* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.common_timeout_list*, %struct.common_timeout_list** %8, align 8
  %66 = load %struct.event*, %struct.event** %10, align 8
  %67 = call i32 @common_timeout_schedule(%struct.common_timeout_list* %65, %struct.timeval* %7, %struct.event* %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load %struct.event_base*, %struct.event_base** %9, align 8
  %70 = load i32, i32* @th_base_lock, align 4
  %71 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %69, i32 %70)
  ret void
}

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @gettime(%struct.event_base*, %struct.timeval*) #1

declare dso_local %struct.event* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @event_del_nolock_(%struct.event*, i32) #1

declare dso_local i32 @event_active_nolock_(%struct.event*, i32, i32) #1

declare dso_local i32 @common_timeout_schedule(%struct.common_timeout_list*, %struct.timeval*, %struct.event*) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
